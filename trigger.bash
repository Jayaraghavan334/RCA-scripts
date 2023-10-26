#!/opt/homebrew/bin/bash
./zero_add.bash
python3 indent.py
python3 draw_boxes.py
./remove.bash
./vrn_list.bash
