#!/bin/bash
set -e


# Name of the cf stack
STACKNAME=vpc-public-subnets

# Name of the cf bucket
BUCKETNAME=cloudformation-templates-vid


if [ "$#" -ne 1 ]; then
    echo "please supply one argument create-stack || update-stack"
    echo ""
    echo "example: sh create-vpc-public-subnets.sh create-stack"
    exit 1
fi


# Upload CF Template
aws s3 cp $STACKNAME.yaml s3://$BUCKETNAME/

# Update CF Stack
aws cloudformation "$1" --stack-name $STACKNAME --template-url https://s3.amazonaws.com/$BUCKETNAME/$STACKNAME.yaml