FROM devbox/deployer

COPY swarm-master-user-data.template.new /usr/lib/esxcloud/deployer/scripts/swarm-master-user-data.template
COPY swarm-slave-user-data.template.new /usr/lib/esxcloud/deployer/scripts/swarm-slave-user-data.template
