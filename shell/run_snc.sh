#!/usr/bin/env bash

#
# Start a tensorflow training server. First argument: ps/worker, second argument: task index
# Run this in the source directory of every involved host.
# Each host may be hosting more than one tensorflow server instalnce
# Work will start once all nodes of the cluster have joined
#

python cifar10_distr.py \
    --ps_hosts=charybdis:2222 \
    --worker_hosts=charybdis:2223,scylla:2223 \
    --job_name=$1 --task_index=$2


