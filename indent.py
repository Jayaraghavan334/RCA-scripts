import json
import subprocess
import re
regex         =  r".*-cordinates.json"
regex_compile =  re.compile(regex)
file_list     =  subprocess.run("ls",text=True,stdout=subprocess.PIPE).stdout
for files in file_list.splitlines():
    if(regex_compile.search(files)):
        with open(files,"w+") as file_handle:
            json_dict = json.load(file_handle)
            json.dump(json_dict,file_handle,indent=2)