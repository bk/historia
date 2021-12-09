<%! import os, yaml, csv %>

<%def name="get_yaml(filename)"><%
full_path = os.path.join(DATADIR, filename)
with open(full_path) as f:
    return yaml.safe_load(f) or {}
%></%def>

<%def name="get_csv(csvfile, delimiter=',')"><%
info = []
full_path = os.path.join(DATADIR, csvfile)
with open(full_path) as f:
    info = list(csv.DictReader(f, delimiter=delimiter))
return info
%></%def>
