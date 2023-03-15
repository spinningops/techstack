#!/bin/bash


# create policy-allow-users-manage-keys
aws iam create-policy --policy-name policy-allow-users-manage-keys --policy-document file://policy-allow-users-manage-keys.json

# create policy-allow-users-to-self-manage-mfa-device
aws iam create-policy --policy-name policy-allow-users-to-self-manage-mfa-device --policy-document file://policy-allow-users-to-self-manage-mfa-device.json

# create policy-block-most-access-unless-signed-in-with-mfa
aws iam create-policy --policy-name policy-block-most-access-unless-signed-in-with-mfa --policy-document file://policy-block-most-access-unless-signed-in-with-mfa.json
