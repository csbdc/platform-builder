#!/bin/bash 
helm repo add fluxcd-community https://fluxcd-community.github.io/helm-charts
helm install flux2 fluxcd-community/flux2
helm install flux2-sync fluxcd-community/flux2-sync \
  --set gitRepository.spec.url="https://github.com/csbdc/platform-builder.git" \
  --set gitRepository.spec.ref.branch="main"