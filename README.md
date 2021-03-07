# crypto-mine
Docker project for crypto mining

https://www.celantur.com/blog/run-cuda-in-docker-on-linux/

https://linuxconfig.org/ethereum-mining-on-ubuntu-18-04-and-debian
https://ubuntu.com/blog/mining-ethereum-on-ubuntu-with-a-gtx-1070
https://linuxhint.com/mine-etherium-ethminer-ubuntu/

## pool dashboard
https://ethermine.org/miners/0x1f18440CC37431ed7C7B1E95CCf456889c26EE54/dashboard


## eth
docker build . --tag='ethminer'
docker run -d --restart=unless-stopped --runtime=nvidia --gpus all --name ethminer ethminer


## rvn
docker build ./rvn --tag='rvnminer'
docker run -d --device=/dev/dri --name rvnminer rvnminer 


## zil

https://shardpool.io/#start
https://dev.zilliqa.com/docs/miners/mining-zilminer/#cuda-driver-setup-for-nvidia-gpus-only
https://github.com/DurianStallSingapore/ZILMiner

./zilminer -P zil://fd6a06a7cc77b03f0a8b4c3532be6041ffabc182754cb154db063e81486ad26c.worker0@eu1-zil.shardpool.io:5000/api --report-hr=1 --work-timeout=99998 --retry-delay=998 --farm-retries=99998




