#!/bin/bash

./NBMiner_Linux/nbminer -a ethash -o ethproxy+tcp://eu1.ethermine.org:4444 -u 0x38Ce0D835ec4feEd3698516a40F155B567f8ebB2.$1 --platform $GPU_PLATFORM --lhr 0
