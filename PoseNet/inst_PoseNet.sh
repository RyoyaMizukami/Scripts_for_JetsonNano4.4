#!/bin/sh
git clone https://github.com/tensorflow/tfjs-model.git
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash –
sudo apt-get install -y nodejs
sudo apt-get install node-gyp
cd tfjs-models/posenet/demos
yarn
yarn watch
