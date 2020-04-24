from pathlib import Path
import json
import os


for filename in Path('/home/lorenzo/Code/Zerynth/repos/vm/vm_dev/boards/').rglob('build.json'):
    print("Editing", filename)
    with open(filename, 'r') as f:
        dic = json.load(f)
        for vm in dic['vms']:
            vm.pop('memdelta')
    os.remove(filename)
    with open(filename, 'w') as f:
        json.dump(dic, f, indent=4)

