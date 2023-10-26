import os
import json
import re
import subprocess
import cv2
regex             = r".*cordinates\.json"
regex_compile     = re.compile(regex)
file_list         = subprocess.run("ls",text=True,stdout=subprocess.PIPE).stdout
for file_list in file_list.splitlines():
    if(regex_compile.search(file_list)):
        with open(file_list,"r") as file_handle:
            json_dict=json.load(file_handle)
        image = cv2.imread(file_list.replace("-cordinates.json",".jpg"))
        for detections in json_dict["detections"]:
            cv2.rectangle(image,(detections["left"],detections["top"]),(detections["right"],detections["bottom"]),(0,0,255),2)
        cv2.imwrite(file_list.replace("-cordinates.json","-bbox.jpg"),image)