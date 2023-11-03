#!/bin/env bash

# Crear Cluster
eksctl create cluster \
--name cka \
--region=us-east-1 \
--nodegroup-name cka-workers \
--node-type t3.medium \
--nodes 3 \
--nodes-min 1 \
--nodes-max 4 \
--managed

# Habilitar metricas
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

# Destruir cluster
eksctl delete cluster cka