#!/bin/bash
color=$(kubectl get deployment app -o=jsonpath='{.metadata.labels.deployment}')
tempfile=$(mktemp)
echo "deploymentColor=$color" > $tempfile