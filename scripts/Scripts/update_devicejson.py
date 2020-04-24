#!/bin/python3

import os
import re
import json

path = "/home/lorenzo/Code/Zerynth/repos/vm/vm_dev/boards/"

files = []

for r, d, f in os.walk(path):
    for file in f:
        if 'build.json' in file:
            files.append(os.path.join(r, file))

for f in files:
    with open(f, 'r') as file:
        parsed_json = json.load(file)
        print("Editing", parsed_json['name'], "...")
        try:
            arch_opts = parsed_json['gccopts']['arch']
            for opt in range(len(arch_opts)):
                if opt == 1 and arch_opts[opt] != '-mthumb':
                    print(">>> Inserted -mthumb")
                    arch_opts.insert(opt, '-mthumb')
                print(">>> BEFORE:", arch_opts[opt])
                arch_opts[opt] = re.sub("\Acortex-m", "-mcpu=cortex-m", arch_opts[opt])
                print(">>> AFTER:", arch_opts[opt])
        except Exception:
            print("No need for update")
        print("--------------------------------------------------")

    with open(f, 'w') as file:
        json.dump(parsed_json, file, indent=4)
