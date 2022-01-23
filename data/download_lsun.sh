#!/bin/bash
mkdir -p image/lmdb
wget http://dl.yf.io/lsun/scenes/church_outdoor_train_lmdb.zip -O ./data/image/church.zip
unzip ./data/image/church.zip -d ./data/image/lmdb
python ./data/prepare_lsun.py ./data/image/church ./data/image/lmdb/church_outdoor_train_lmdb
rm -r ./data/image/lmdb
rm ./data/image/church.zip
