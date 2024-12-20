#!/bin/bash
# Create a Kubernetes cluster with KIND

kind create cluster --name todo-cluster
kubectl cluster-info --context kind-todo-cluster
