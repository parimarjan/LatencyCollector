import re
import numpy as np
import time
from scipy.linalg import solve
import psycopg2
import pdb

# Establish connection
conn = psycopg2.connect(database="imdb", user="ubuntu", password="",
        host="127.0.0.1", port="5432")
cur = conn.cursor()

# Function to execute a query and return the EXPLAIN ANALYZE output
def get_explain_output(query):
    start = time.time()
    cur.execute(f"EXPLAIN ANALYZE {query}")
    exec_time = time.time() - start
    return cur.fetchall()[0][0], exec_time

# Queries
queries = [
    "SELECT * FROM title",
    "SELECT COUNT(*) FROM title",
    "SELECT * FROM title WHERE title.id < 100000",
    "SELECT * FROM title",
    "SELECT * FROM title WHERE title.production_year < 1950",
]

## TODO: 1st query is in memory; 4th query is after clearing disk.

# Get explain outputs
explain_outputs = [get_explain_output(q) for q in queries]
exec_times = [t[1] for t in explain_outputs]

import copy
exec_times2 = copy.deepcopy(exec_times)
exec_times2[0] = exec_times[3]
exec_times2[3] = exec_times[0]
exec_tiems = exec_times2

explain_outputs = [t[0] for t in explain_outputs]

# Function to extract cardinalities from the EXPLAIN ANALYZE output
# Adjust the regular expressions if necessary for your PostgreSQL version and configuration
def extract_cardinality(output):
    # Extract actual rows and loops
    matches = re.search(r"actual time=.*?rows=(\d+) loops=(\d+)", output)
    rows, loops = int(matches.group(1)), int(matches.group(2))

    # Get total number of rows processed
    total_rows = rows * loops

    return total_rows

### fix cardinalities
# Extract cardinalities
cardinalities = [extract_cardinality(o) for o in explain_outputs]

# Now, estimate n values based on the extracted cardinalities and descriptions from the paper
nt1 = nt2 = no2 = cardinalities[3]  # Adjust as per paper's method
# no2 = cardinalities[1]
nt3 = nt3 = cardinalities[2]
ni3 = nt1
no3 = nt3

## seq scan but not in memory
ns4 = cardinalities[0]
nt4 = cardinalities[0]

## assumping on same table
ni5 = nt1
ns5 = nr5 = nt5 = no5 = cardinalities[4]

print(cardinalities)
pdb.set_trace()

# Constructing the N matrix
N = np.array([
    [0, 0, nt1, 0, 0],
    [0, 0, nt2, 0, no2],
    [0, 0, nt3, ni3, no3],
    [ns4, 0, nt4, 0, 0],
    [ns5, nr5, nt5, ni5, no5]
])

t = exec_times

# Solve for c
c = solve(N, t)

# Print calibrated parameters
seq_page_cost, rand_page_cost, cpu_tuple_cost, cpu_index_tuple_cost, cpu_operator_cost = c

print(f"Seq Page Cost: {seq_page_cost}")
print(f"Rand Page Cost: {rand_page_cost}")
print(f"CPU Tuple Cost: {cpu_tuple_cost}")
print(f"CPU Index Tuple Cost: {cpu_index_tuple_cost}")
print(f"CPU Operator Cost: {cpu_operator_cost}")

# Close connection
cur.close()
conn.close()

from scipy.optimize import linprog

def calibrate_postgresql_parameters(N, t):
    """
    Solve for the calibration parameters c using the model N * c = t,
    where N is the matrix representing the number of operations and
    t is the vector of observed times.

    N: 2D numpy array (or list of lists) of shape (number of queries, number of parameters)
    t: 1D numpy array (or list) of execution times for each query

    Returns:
    - 1D numpy array: the calibration parameters c
    """
    num_queries, num_parameters = np.shape(N)

    # Since linprog tries to minimize, not solve equations directly,
    # we set up a problem where we minimize the sum of squared residuals.
    # This is equivalent to the least squares problem.
    # The objective function (c' * N' * N * c - 2 * t' * N * c)
    # represents the sum of squared residuals.

    # Objective function coefficients:
    # For the problem setup, the objective is 0.5 * x^T * Q * x + c^T * x
    # where x is the variable vector (here, it's c in our original problem),
    # Q is a matrix derived from N (Q = N^T * N), and c is a vector derived from t and N (c = -N^T * t)
    Q = np.dot(N.T, N)
    c_vector = -np.dot(N.T, t)

    # In terms of linprog, the problem becomes minimizing c^T * x such that A_ub * x <= b_ub
    # We set up A_ub as an identity matrix to ensure x (i.e., c) is non-negative. b_ub is set to a large positive value.
    A_ub = -np.eye(num_parameters)
    b_ub = np.zeros(num_parameters)

    # Solve the linear programming problem.
    res = linprog(c_vector, A_ub=A_ub, b_ub=b_ub, bounds=[(0, None) for _ in range(num_parameters)], method='highs')
    print(res)

    return res.x if res.success else None

c = calibrate_postgresql_parameters(N, t)

# Print calibrated parameters
seq_page_cost, rand_page_cost, cpu_tuple_cost, cpu_index_tuple_cost, cpu_operator_cost = c

print("*******after putting positive constraint on c**********")
print(f"Seq Page Cost: {seq_page_cost}")
print(f"Rand Page Cost: {rand_page_cost}")
print(f"CPU Tuple Cost: {cpu_tuple_cost}")
print(f"CPU Index Tuple Cost: {cpu_index_tuple_cost}")
print(f"CPU Operator Cost: {cpu_operator_cost}")
