#!/usr/bin/env python

import argparse
import subprocess
import os

parser = argparse.ArgumentParser("config_gen")
parser.add_argument("configs", help="Path to all config files", type=str, nargs="+")
args = parser.parse_args()


def get_import_type(import_file: str):
    result = subprocess.run(f"echo \"std.type(import '{import_file}')\" | jsonnet -S -", shell=True, capture_output=True, text=True)
    return result.stdout.strip()


tree = {}
for config in args.configs:
    dirname = os.path.dirname(config)
    t = tree
    parts = dirname.split('/')[1:]
    for part in parts:
        part = part.replace("-", "_")
        t = t.setdefault(f"{part}+", {})
    import_type = get_import_type(config)
    if import_type == "function":
        t[f"config+"] = f"(import '{config}')(outerSelf)"
    else:
        t[f"config+"] = f"(import '{config}')"

def tree_to_string(tree, isRoot) -> str:
    if isinstance(tree, dict):
        vals = "{"
        if isRoot:
            vals += "local outerSelf = self,\n"
        for key,val in tree.items():
            vals += f" {key}: {tree_to_string(val, False)},\n"
        vals += "}"
        return vals
    else:
        return(str(tree))
print(tree_to_string(tree, True))

