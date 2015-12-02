# Photon Controller Custom Deployer

## How to use

- install git on devbox

```
# tdnf isntall git
```

- clone repository

```
# git clone https://github.com/masanara/custom-deployer.git
```

- build new deployer docker image

```
# cd custom-deployer
# docker build -t deployer .
```

- stop an existing deployer container

```
# docker stop devbox_deployer_container
```

- start new deployer container

```
# docker run -d -v /var/esxcloud:/var/esxcloud -v /devbox_data/tmp:/devbox_data/tmp -v /esxcloud/java/distributions/configurations/configuration
-deployer:/etc/esxcloud -v /vagrant/log/deployer:/vagrant/log -v /vagrant/log/deployer/script_logs:/vagrant/log/script_logs -v /tmp/devbox_datastore:/tmp --restart=always --name deployer --net=host deployer /etc/esxcloud/run.sh
```


