# Event-Driven Ansible Demo
## Cluster Name: eda_cluster

## Demo Setup

Clone the repo:

`git clone https://github.com/derekwaters/eda_cluster`

Change into the repo folder:

`cd eda_cluster`

Start the containers with podman

`podman-compose up`

Copy the ansible rulebook demo files to the ansible_eda container

`podman cp .\eda_demo\* ansible_eda:/opt/app-root/src/`

Connect to the ansible_eda container

`ssh ansible_eda`

Start the rulebook

`ansible-rulebook --rulebook webhook-example.yml -i inventory.yml --verbose`

Now trigger events!