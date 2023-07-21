# Terraform AWS

## Setup

### Init

```bash
cd aws && terraform init
```

### Install Terraform

```bash
brew install terraform
```

### Install AWS CLI

```bash
brew install awscli
```



### Configure AWS CLI

Execute the following command to install the AWS CLI.

```bash
aws configure
```
and configure it with profile name `personal`.

### Deploy

Deploy sandbox environment.

```bash
cd aws && bash coomands/deploy.sandbox.sh
```

Deploy production environment.

```bash
cd aws && bash coomands/deploy.prod.sh
```

### Destroy

Destroy sandbox environment.

```bash
cd aws && bash coomands/destroy.sandbox.sh
```

Destroy production environment.

```bash
cd aws && bash coomands/destroy.prod.sh
```
