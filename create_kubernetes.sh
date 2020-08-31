eksctl create cluster \
--name wisdompet-prod \
--version 1.17 \
--region us-west-2 \
--nodegroup-name linux-nodes \
--node-type t2.micro \
--nodes 3 \
--nodes-min 1 \
--nodes-max 4 \
--ssh-access \
--ssh-public-key /home/ubuntu/store/capstone-kubernetes.pub \
--managed