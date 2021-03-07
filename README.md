# crypto-mine
Docker project for crypto mining

https://www.celantur.com/blog/run-cuda-in-docker-on-linux/

https://linuxconfig.org/ethereum-mining-on-ubuntu-18-04-and-debian
https://ubuntu.com/blog/mining-ethereum-on-ubuntu-with-a-gtx-1070
https://linuxhint.com/mine-etherium-ethminer-ubuntu/

## pool dashboard
https://ethermine.org/miners/0x1f18440CC37431ed7C7B1E95CCf456889c26EE54/dashboard


## eth
docker build ./eth --tag='ethminer'
docker run -d --runtime=nvidia --gpus all --name ethminer ethminer


## rvn
docker build ./rvn --tag='rvnminer'
docker run -d --device=/dev/dri --name rvnminer rvnminer 

