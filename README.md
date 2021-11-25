# crypto-mine
Docker project for crypto mining

* https://www.celantur.com/blog/run-cuda-in-docker-on-linux/
* https://linuxconfig.org/ethereum-mining-on-ubuntu-18-04-and-debian
* https://ubuntu.com/blog/mining-ethereum-on-ubuntu-with-a-gtx-1070
* https://linuxhint.com/mine-etherium-ethminer-ubuntu/

## pool dashboard
* https://ethermine.org/miners/0x38Ce0D835ec4feEd3698516a40F155B567f8ebB2/dashboard
* https://ravencoin.flypool.org/miners/RQaiz1xDcfRjhoqRhfc6kRBsLYQsBrCDqS/dashboard
* https://flockpool.com/miners/rtm/RFmnEH4qfyX8qUsFFsSuKwkJPSh1Xg7NeZ


## eth
* `docker build . --tag='nsfminer-cuda'`
* `docker run -d --restart=unless-stopped --gpus all --name nsfminer-cuda nsfminer-cuda worker0`


## rvn
* `docker build ./rvn --tag='rvnminer-amd'`
* `docker run -d --restart=unless-stopped --device=/dev/dri --name rvnminer-amd rvnminer-amd`

* `docker build ./rvn --tag='rvnminer-cuda'`
* `docker run -d --restart=unless-stopped --gpus all --name rvnminer-cuda rvnminer-cuda`


## rtm
* `docker build . --tag='rtm-cpuminer'`
* `docker run -d --restart=unless-stopped --name rtm-cpuminer rtm-cpuminer`


## zil

* https://shardpool.io/#start
* https://dev.zilliqa.com/docs/miners/mining-zilminer/#cuda-driver-setup-for-nvidia-gpus-only
* https://github.com/DurianStallSingapore/ZILMiner

./zilminer -P zil://fd6a06a7cc77b03f0a8b4c3532be6041ffabc182754cb154db063e81486ad26c.worker0@eu1-zil.shardpool.io:5000/api --report-hr=1 --work-timeout=99998 --retry-delay=998 --farm-retries=99998




