## Initial Setup
```bash
sudo apt update && sudo apt upgrade -y
```
___
## Nvidia Drivers
```bash
sudo apt install nvidia-driver-xxx
```
___
## Basic Tools
```bash
sudo apt install git net-tools htop openjdk-XX-jdk curl ca-certificates
```
___
## ZSH
```bash
sudo apt install zsh && sudo apt-get install powerline fonts-powerline

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1

source .zshrc

sudo chsh -s /bin/zsh
```
___
## SSH
```bash
ssh-agent -s

ssh-add

sudo chmod 700 ~/.ssh

sudo chmod 600 ~/.ssh/*
```
___
## Postman
Install via zip and create shorcut using
```bash
sudo nano /usr/share/applications/postman.desktop
```
With content:
```txt
[Desktop Entry]
Type=Application
Name=Postman
Icon=${Installation folder}/resources/app/assets/icon.png
Exec="${installation folder}/Postman"
Comment=Postman Desktop App
Categories=Development;Code;
```
___
## Brave
```bash
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && sudo curl -fsSLo /etc/apt/sources.list.d/brave-browser-release.sources https://brave-browser-apt-release.s3.brave.com/brave-browser.sources && sudo apt update && sudo apt install brave-browser
```
___
## Docker
```bash
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo usermod -aG docker $USER
```
___
## Node
```bash
sudo apt install npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash
nvm install 22
```
___
## k6
```bash
sudo gpg -k && \
sudo gpg --no-default-keyring --keyring /usr/share/keyrings/k6-archive-keyring.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C5AD17C747E3415A3642D57D77C6C491D6AC1D69 && \
echo "deb [signed-by=/usr/share/keyrings/k6-archive-keyring.gpg] https://dl.k6.io/deb stable main" | sudo tee /etc/apt/sources.list.d/k6.list && \
sudo apt-get update && \
sudo apt-get install k6
```
___
## K8S
```bash
curl -LO https://dl.k8s.io/release/v1.33.0/bin/linux/amd64/kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
sudo chmod 700 get_helm.sh
./get_helm.sh


curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.23.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
```
___
### Open-lens Extension
`@alebcay/openlens-node-pod-menu`
___
## Manual installation
* Maven
* DBeaver
* VSCode
* IntelliJ IDEA
* OpenLens