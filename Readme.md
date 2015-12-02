# Photon Controller Custom Deployer

## How to use

1. install git on devbox

```
tdnf isntall git
```

2. pull repository

```
git clone https://github.com/masanara/custom-deployer.git
```

3. build Docker image

```
cd custom-deployer
docker build -t deployer .
```

4. stop existing deployer

```
docker stop devbox_deployer_container
```

5. start new deployer container

```
docker run --restart=always --name deployer --net=host deployer /etc/esxcloud/run.sh
```

