#!/bin/sh
#git clone https://github.com/FREEWING-JP/Jetson_Convenience_Script
#bash ./Jetson_Convenience_Script/JetPack/1st_jetson_initialize.sh
./Jetson_Convenience_Script/TensorFlow/inst_tf1.sh
bash ./Jetson_Convenience_Script/tf-pose-estimation/inst_tf-pose-estimation.sh
sed -i -e “s/#backend: Agg/backend: TkAgg/g” ./.local/lib/python3.6/site-packages/matplotlib/mpl-data/matplotlibrc
sudo apt-get install tk-dev
sudo apt-get install python3-tk
sudo apt-get install libcanberra-gtk-module
python3 run_webcam.py --model=mobilenet_v2_small --resize=432x368 --camera=0
