#!/bin/bash

#PUBLIC_IP=$(az network public-ip show -g heber-cervantes -n loadBalancer --query "ipAddress" -o tsv)
#PUBLIC_IP=$(az network public-ip show -g $CLUSTER_RESOURCE_GROUP -n loadBalancer --query "ipAddress" -o tsv)

cd ..
echo "$(cat service.yml | head -17)" > service.yml
echo "  loadBalancerIP: $PUBLIC_IP" >> service.yml
echo "  selector:
    app: zammad" >> service.yml
