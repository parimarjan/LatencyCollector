import networkx as nx
import hashlib
import numpy as np
import pandas as pd
from collections import defaultdict

import os
import errno
import torch
from torch.autograd import Variable
import copy
import numpy as np
import pandas as pd
import glob
import string
import hashlib
import pickle
import gzip
import re
import pdb
import random
import time
import sys

import math

from bokeh.io import push_notebook, show, output_notebook
from bokeh.plotting import figure
import networkx as nx
from bokeh.plotting import figure, from_networkx, curdoc
from bokeh.models import Rect, HoverTool,  TextInput, GraphRenderer, Circle
from bokeh.io import output_file
from bokeh.plotting import figure, output_file, save
from bokeh.models import (BoxZoomTool, Circle, Line, HoverTool,
                          MultiLine, Plot, Range1d, ResetTool)
from bokeh.models import LinearColorMapper, BasicTicker, ColorBar,CustomJSHover,CustomJS
from bokeh.models import Ellipse, GraphRenderer, StaticLayoutProvider

def make_dir(directory):
    try:
        os.makedirs(directory)
    except OSError as e:
        if e.errno != errno.EEXIST:
            raise

def deterministic_hash(string):
    return int(hashlib.sha1(str(string).encode("utf-8")).hexdigest(), 16)

def nCr(n,r):
    f = math.factorial
    return f(n) / f(r) / f(n-r)

def shuffle_list(*ls):
  l = list(zip(*ls))
  random.shuffle(l)
  return zip(*l)

def extract_values(obj, key):
    """Recursively pull values of specified key from nested JSON."""
    arr = []

    def extract(obj, arr, key):
        """Return all matching values in an object."""
        if isinstance(obj, dict):
            for k, v in obj.items():
                if isinstance(v, (dict, list)):
                    extract(v, arr, key)
                elif k == key:
                    # if "Scan" in v:
                        # print(v)
                        # pdb.set_trace()
                    # if "Join" in v:
                        # print(obj)
                        # pdb.set_trace()
                    arr.append(v)

        elif isinstance(obj, list):
            for item in obj:
                extract(item, arr, key)
        return arr

    results = extract(obj, arr, key)
    return results

def is_float(val):
    try:
        float(val)
        return True
    except:
        return False

def extract_ints_from_string(string):
    return re.findall(r'\d+', string)

def get_qnames(QDIR):
    fns = os.listdir(QDIR)
    qnames = []
    for fn in fns:
        if ".sql" in fn:
            qnames.append(fn)

    return qnames

def get_rt_palette():
    #from bokeh.palettes import RdYlGn as PAL
    from bokeh.palettes import Reds256 as PAL

    PAL = list(PAL)
    PAL.reverse()
    PAL = PAL[18:188]
    return PAL

NODE_KEYS = ['NodeType',
             'ParentRelationship',
             #'ParallelAware',
             'JoinType',
             #'Startup Cost',
             'TotalCost',
             'PlanRows', #'Plan Width',
             'ActualStartupTime',
             'ActualTotalTime',
             'ActualRows', 'ActualLoops',
             "ActualCurTime",
             #'Inner Unique',
             #'Join Filter',
             #'Rows Removed by Join Filter'
            ]

COLORS = {}

def bokeh_plot(p1, noderadius=8, title="", showplot=True,
        height=700, width=900,
        ):

    G = p1
    tmp = nx.Graph()
    for edge in G.edges():
        tmp.add_edge(edge[0], edge[1])
    pos = nx.nx_pydot.graphviz_layout(tmp, prog="dot")

    plot = figure(title=title,
        height=height, width=width,
        tools="pan,wheel_zoom,save,reset",
        active_scroll='wheel_zoom',
        )

    node_indices = list(p1.nodes())
    nodevals = []

    for nodekey in NODE_KEYS:
        curvals = []
        for node in node_indices:
            if not nodekey in p1.nodes()[node]:
                curvals.append(-1)
            else:
                curvals.append(p1.nodes()[node][nodekey])
        nodevals.append(curvals)

    ## adding nodes
    graph = GraphRenderer()
    graph.node_renderer.data_source.add(node_indices, 'index')

    ## setting colors
    cols = []
    linecols = []
    for node in node_indices:
        linecols.append("b")
        cols.append("blue")

    graph.node_renderer.data_source.add(cols, 'Color')
    graph.node_renderer.data_source.add(linecols, 'LineColor')

    tool_list = []

    for ci, cv in enumerate(nodevals):
        graph.node_renderer.data_source.add(cv, NODE_KEYS[ci].replace("@", ""))

        if "@" not in NODE_KEYS[ci]:
            curval = "@" + NODE_KEYS[ci]
        else:
            curval = NODE_KEYS[ci]

        tool_list.append(tuple([NODE_KEYS[ci], curval]))

    graph.node_renderer.glyph = Circle(radius=noderadius,
                                      fill_color="Color",
                                      line_width=2,
                                      line_color="black"
                                      )

    start = []
    end = []

    for e in p1.edges():
        start.append(e[0])
        end.append(e[1])

    graph.edge_renderer.data_source.data = dict(
               start=start,
               end=end)

    edgevals = []
    for e in p1.edges():
        if "ActualCurTime" in p1.nodes[e[1]]:
            edgevals.append(p1.nodes[e[1]]["ActualCurTime"])
        else:
            edgevals.append(0.0)

    color_mapper = LinearColorMapper(palette=get_rt_palette(),
                                      low = min(edgevals),
                                      high= max(edgevals))

    graph.edge_renderer.data_source.data["line_width"] = [3 for e in p1.edges()]

    graph.edge_renderer.data_source.data["ActualCurTime"] = edgevals
    graph.edge_renderer.glyph.line_width = {'field': 'line_width'}
    graph.edge_renderer.glyph.line_color = {'field': "ActualCurTime", 'transform': color_mapper}

    graph_layout = pos
    graph.layout_provider = StaticLayoutProvider(graph_layout=graph_layout)

    plot.renderers.append(graph)
    node_hover_tool = HoverTool(tooltips=tool_list)
    plot.add_tools(node_hover_tool)

    plot.axis.visible = False
    plot.xgrid.grid_line_color = None
    plot.ygrid.grid_line_color = None

    color_bar = ColorBar(color_mapper=color_mapper,
                     ticker= BasicTicker(),
                     location=(0,0), title="Latency",
                     name="latency")
    plot.add_layout(color_bar, 'below')

    if showplot:
        show(plot, notebook_handle=True)
    return plot

def _find_all_tables(plan):
    '''
    '''
    # find all the scan nodes under the current level, and return those
    table_names = extract_values(plan, "Relation Name")
    alias_names = extract_values(plan, "Alias")
    table_names.sort()
    alias_names.sort()

    return table_names, alias_names

def extract_aliases2(plan):
    aliases = extract_values(plan, "Alias")
    return aliases

def explain_to_nx2(explain):
    '''
    '''
    # JOIN_KEYS = ["Hash Join", "Nested Loop", "Join"]
    base_table_nodes = []
    join_nodes = []

    def _get_node_name(tables):
        name = ""
        if len(tables) > 1:
            name = str(deterministic_hash(str(tables)))[0:5]
            join_nodes.append(name)
        else:
            name = tables[0]
            if len(name) >= 6:
                # no aliases, shorten it
                name = "".join([n[0] for n in name.split("_")])
                if name in base_table_nodes:
                    name = name + "2"
            base_table_nodes.append(name)

        return name

    def _add_node_stats(node, plan):
        # add stats for the join
        G.nodes[node]["Plan Rows"] = plan["Plan Rows"]
        if "Actual Rows" in plan:
            G.nodes[node]["Actual Rows"] = plan["Actual Rows"]
        else:
            G.nodes[node]["Actual Rows"] = -1.0
        if "Actual Total Time" in plan:
            G.nodes[node]["total_time"] = plan["Actual Total Time"]

            if "Plans" not in plan:
                children_time = 0.0
            elif len(plan["Plans"]) == 2:
                children_time = plan["Plans"][0]["Actual Total Time"] \
                        + plan["Plans"][1]["Actual Total Time"]
            elif len(plan["Plans"]) == 1:
                children_time = plan["Plans"][0]["Actual Total Time"]
            else:
                assert False

            G.nodes[node]["cur_time"] = plan["Actual Total Time"]-children_time

        else:
            G.nodes[node]["Actual Total Time"] = -1.0

        if "Node Type" in plan:
            G.nodes[node]["Node Type"] = plan["Node Type"]

        total_cost = plan["Total Cost"]
        G.nodes[node]["Total Cost"] = total_cost
        aliases = G.nodes[node]["aliases"]
        if len(G.nodes[node]["tables"]) > 1:
            children_cost = plan["Plans"][0]["Total Cost"] \
                    + plan["Plans"][1]["Total Cost"]

            # +1 to avoid cases which are very close
            if not total_cost+1 >= children_cost:
                print("aliases: {} children cost: {}, total cost: {}".format(\
                        aliases, children_cost, total_cost))
                # pdb.set_trace()
            G.nodes[node]["cur_cost"] = total_cost - children_cost
            G.nodes[node]["node_label"] = plan["Node Type"][0]
            G.nodes[node]["scan_type"] = ""
        else:
            G.nodes[node]["cur_cost"] = total_cost
            G.nodes[node]["node_label"] = node
            # what type of scan was this?
            node_types = extract_values(plan, "Node Type")
            for i, full_n in enumerate(node_types):
                shortn = ""
                for n in full_n.split(" "):
                    shortn += n[0]
                node_types[i] = shortn

            scan_type = "\n".join(node_types)
            G.nodes[node]["scan_type"] = scan_type

    def traverse(obj):
        if isinstance(obj, dict):
            if "Plans" in obj:
                if len(obj["Plans"]) == 2:
                    # these are all the joins
                    left_tables, left_aliases = _find_all_tables(obj["Plans"][0])
                    right_tables, right_aliases = _find_all_tables(obj["Plans"][1])
                    if len(left_tables) == 0 or len(right_tables) == 0:
                        return
                    all_tables = left_tables + right_tables
                    all_aliases = left_aliases + right_aliases
                    all_aliases.sort()
                    all_tables.sort()

                    if len(left_aliases) > 0:
                        node0 = _get_node_name(left_aliases)
                        node1 = _get_node_name(right_aliases)
                        node_new = _get_node_name(all_aliases)
                    else:
                        node0 = _get_node_name(left_tables)
                        node1 = _get_node_name(right_tables)
                        node_new = _get_node_name(all_tables)

                    # update graph
                    # G.add_edge(node0, node_new)
                    # G.add_edge(node1, node_new)
                    G.add_edge(node_new, node0)
                    G.add_edge(node_new, node1)
                    G.edges[(node_new, node0)]["join_direction"] = "left"
                    G.edges[(node_new, node1)]["join_direction"] = "right"

                    # add other parameters on the nodes
                    G.nodes[node0]["tables"] = left_tables
                    G.nodes[node1]["tables"] = right_tables
                    G.nodes[node0]["aliases"] = left_aliases
                    G.nodes[node1]["aliases"] = right_aliases
                    G.nodes[node_new]["tables"] = all_tables
                    G.nodes[node_new]["aliases"] = all_aliases

                    # TODO: if either the left, or right were a scan, then add
                    # scan stats
                    _add_node_stats(node_new, obj)

                    if len(left_tables) == 1:
                        _add_node_stats(node0, obj["Plans"][0])
                    if len(right_tables) == 1:
                        _add_node_stats(node1, obj["Plans"][1])

            for k, v in obj.items():
                if isinstance(v, (dict, list)):
                    traverse(v)

        elif isinstance(obj, list) or isinstance(obj,tuple):
            for item in obj:
                traverse(item)

    G = nx.DiGraph()
    traverse(explain)
    G.base_table_nodes = base_table_nodes
    G.join_nodes = join_nodes
    return G

def explain_to_nx(plan):
    def recurse(G, cur_plan, cur_key, cur_node):
        if cur_plan is None:
            return

        #if isinstance(cur_plan, dict):
        new_node = cur_plan["Node Type"] + str(hash(str(cur_plan)))[0:6]
        G.add_node(new_node)
        if cur_node is not None:
            G.add_edge(cur_node,
                      new_node)

        # print(cur_plan.keys())
        for k,v in cur_plan.items():
            if k == "Plans":
                continue
            if isinstance(v, list) or isinstance(v, dict):
                v = str(v)

            k = k.replace(" ", "")
            if "Time" in k:
                G.nodes()[new_node][k] = v / 1000.0
            else:
                G.nodes()[new_node][k] = v

        if "Actual Total Time" in cur_plan:
            if "Plans" not in cur_plan:
                children_time = 0.0
            elif len(cur_plan["Plans"]) == 2:
                children_time = cur_plan["Plans"][0]["Actual Total Time"] \
                        + cur_plan["Plans"][1]["Actual Total Time"]
            elif len(cur_plan["Plans"]) == 1:
                children_time = cur_plan["Plans"][0]["Actual Total Time"]
            else:
                assert False

            # print(children_time)
            G.nodes[new_node]["ActualCurTime"] =(cur_plan["Actual Total Time"]\
                    -children_time) / 1000

        if "Plans" in cur_plan:
            for nextp in cur_plan["Plans"]:
                recurse(G, nextp, "", new_node)

    attrs = defaultdict(set)
    G = nx.DiGraph()
    recurse(G, plan["Plan"], "", None)

    assert nx.is_tree(G)

    return G
