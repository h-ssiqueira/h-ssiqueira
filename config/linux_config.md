# Increase Memory Swap
```shell
sudo swapoff /swapfile
sudo fallocate -l 16G /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
```