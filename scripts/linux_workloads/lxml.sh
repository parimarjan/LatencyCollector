
git clone https://github.com/lorien/lxmlbench.git
cd lxmlbench
python3 -m pip install --user lxml
python3 -m pip install --user selectolax
python3 runtest.py -n 10000
python3 runtest.py -n 1000 -e selectolax
