#!/bin/bash

./NBMiner_Linux/nbminer -a $1 -o $2://$3:$4 -u $5.$6 --platform $GPU_PLATFORM --lhr 76 --lhr-mode 1
