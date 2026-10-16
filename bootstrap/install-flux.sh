#!/bin/bash 
kubectl create ns flux-system
helm repo add fluxcd-community https://fluxcd-community.github.io/helm-charts
helm install -n flux-system --create-namespace flux2 fluxcd-community/flux2
helm install -n flux-system --create-namespace flux2-sync fluxcd-community/flux2-sync \
  --set gitRepository.spec.url="https://github.com/csbdc/platform-builder.git" \
  --set gitRepository.spec.ref.branch="main"\
  --set kustomization.spec.path="./flux-kustomizations"
