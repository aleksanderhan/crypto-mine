# crypto-mine
Docker project for crypto mining

https://www.celantur.com/blog/run-cuda-in-docker-on-linux/

https://linuxconfig.org/ethereum-mining-on-ubuntu-18-04-and-debian
https://ubuntu.com/blog/mining-ethereum-on-ubuntu-with-a-gtx-1070
https://linuxhint.com/mine-etherium-ethminer-ubuntu/

## pool dashboard
https://ethermine.org/miners/5D8ab96C816331416ede77635C4b58e991453e78/dashboard


## eth
docker build . --tag='eth'
docker run -d --gpus all --name eth eth





https://stackoverflow.com/questions/49229883/dynamically-decide-which-gpu-to-run-on-tf-on-nvidia-docker