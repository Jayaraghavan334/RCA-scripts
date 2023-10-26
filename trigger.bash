#!/opt/homebrew/bin/bash
./zero_add.bash
python3 draw_boxes.py
python3 indent.py
./remove.bash
./vrn_list.bash
