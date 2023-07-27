#!/bin/bash

# Variables
GKE_CLUSTER_NAME="autopilot-cluster-1"
GKE_CLUSTER_ZONE="asia-southeast1"

# Set the GKE cluster context
gcloud container clusters get-credentials ${GKE_CLUSTER_NAME} --zone ${GKE_CLUSTER_ZONE}

# Deploy Kubernetes YAML files from the kube directory
kubectl apply -f kube/
