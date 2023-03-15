#!/bin/bash


echo "Hi, Please add your AWS account id"
read ACCOUNT_ID

# attach policy to users-mfa
aws iam attach-group-policy --policy-arn arn:aws:iam::$ACCOUNT_ID:policy/policy-block-most-access-unless-signed-in-with-mfa --group-name users-mfa

# attach policy to users-mfa
aws iam attach-group-policy --policy-arn arn:aws:iam::$ACCOUNT_ID:policy/policy-allow-users-to-self-manage-mfa-device --group-name users-mfa

# attach policy to users-mfa
aws iam attach-group-policy --policy-arn arn:aws:iam::$ACCOUNT_ID:policy/policy-allow-users-manage-keys --group-name users-mfa
