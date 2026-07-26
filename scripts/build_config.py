#!/usr/bin/env python

import argparse
import os

parser = argparse.ArgumentParser("config_gen")
parser.add_argument("configs", help="Path to all config files", type=str, nargs="+")
args = parser.parse_args()


tree = {}
for config in args.configs:
    dirname = os.path.dirname(config)
    t = tree
    parts = dirname.split('/')[1:]
    for part in parts:
        part = part.replace("-", "_")
        t = t.setdefault(f"{part}+", {})
    t[f"config+"] = f"(import '{config}')"

def tree_to_string(tree) -> str:
    if isinstance(tree, dict):
        vals = "{"
        for key,val in tree.items():
            vals += f" {key}: {tree_to_string(val)},\n"
        vals += "}"
        return vals
    else:
        return(str(tree))
print(tree_to_string(tree))

