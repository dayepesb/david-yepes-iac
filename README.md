# Terraform AWS

## Setup

* first create user
* create  policy with next statements
```json
{

}
```
* Assign policy to user and create access key and secret key
* Add access and secret key to ```~/.aws/credentials``` with profile ```personal```

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
