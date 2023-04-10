#!/bin/bash
REGION="us-east-2"
FORMAT=$1
aws ec2 describe-vpcs --region $REGION --output $FORMAT
