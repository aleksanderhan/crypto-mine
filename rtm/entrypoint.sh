#!/bin/bash

echo "{
  \"url\": \"stratum+tcps://eu.flockpool.com:5555\",
  \"url-backup\": \"stratum+tcps://us.flockpool.com:5555\",
  \"user\": \"RFmnEH4qfyX8qUsFFsSuKwkJPSh1Xg7NeZ.$1\",
  \"pass\": \"x\",
  \"algo\": \"gr\"
}" > config.json

./cpuminer-gr-1.2.4.1-x86_64_linux/cpuminer.sh