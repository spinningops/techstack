# GitHub Actions

Instructions to add github actions for a repository

## Use case

upload files to S3 hosted website

## Create workflows

```bash
mkdir -p .github/workflows
```

## Create workflows .yaml

```bash
touch .github/workflows/github-actions-deploy.yaml
```

## Create IAM Role

```bash
aws iam create
```

## Edit worklows .yaml

edit the .yaml file with the new IAM role arn

## Create identity provider at AWS console

create new identity provider for github at aws console

select

- **OpenID Connect**

link to docs [HERE](https://docs.github.com/en/enterprise-server@3.7/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-amazon-web-services)

Provider URL

- https://token.actions.githubusercontent.com

Audience

- sts.amazonaws.com

## Create Web Identity to assume role

IAM > create role > select Web identity > choose the identity provider

## Add IAM policy to assume role

create or add IAM policy the assume role for the workflow

## Update worklows .yaml

update the new role and role name in the .yaml file

## Check new releases

link [HERE](https://github.com/aws-actions/configure-aws-credentials/releases)