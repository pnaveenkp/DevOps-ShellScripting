#!/bin/bash
set -x ### x means execute
REGIONS=$@ # To assign multiple parameters.
FORMAT='json'


for REGION in ${REGIONS}; do
    echo "Let's get the VPC id for region $REGION"
    aws ec2 describe-vpcs --region $REGION --output $FORMAT | jq ".Vpcs[].VpcId"
done
