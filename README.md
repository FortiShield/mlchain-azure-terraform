## mlchain-azure-terraform
Deploy [mlchain/mlchain](https://github.com/mlchain/mlchain), an LLM based chat bot app on Azure with terraform.

### Topology
Front-end access:
- nginx -> Azure Container Apps (Serverless)

Back-end components:
- web -> Azure Container Apps (Serverless)
- api -> Azure Container Apps (Serverless)
- worker -> Azure Container Apps (minimum of 1 instance)
- sandbox -> Azure Container Apps (Serverless)
- ssrf_proxy -> Azure Container Apps (Serverless)
- db -> Azure Database for PostgreSQL
- vectordb -> Azure Database for PostgreSQL
- redis -> Azure Cache for Redis

Before you provision Mlchain, please check and set the variables in var.tf file.

### Terraform Variables Documentation

This document provides detailed descriptions of the variables used in the Terraform configuration for setting up the Mlchain environment.

#### Subscription ID

- **Variable Name**: `subscription-id`
- **Type**: `string`
- **Default Value**: `0000000000000`

#### Virtual Network Variables

##### Region

- **Variable Name**: `region`
- **Type**: `string`
- **Default Value**: `japaneast`

##### VNET Address IP Prefix

- **Variable Name**: `ip-prefix`
- **Type**: `string`
- **Default Value**: `10.99`

#### Storage Account

- **Variable Name**: `storage-account`
- **Type**: `string`
- **Default Value**: `acamlchaintest`

##### Storage Account Container

- **Variable Name**: `storage-account-container`
- **Type**: `string`
- **Default Value**: `dfy`

#### Redis

- **Variable Name**: `redis`
- **Type**: `string`
- **Default Value**: `acamlchainredis`

#### PostgreSQL Flexible Server

- **Variable Name**: `psql-flexible`
- **Type**: `string`
- **Default Value**: `acamlchainpsql`

##### PostgreSQL User

- **Variable Name**: `pgsql-user`
- **Type**: `string`
- **Default Value**: `user`

##### PostgreSQL Password

- **Variable Name**: `pgsql-password`
- **Type**: `string`
- **Default Value**: `#QWEASDasdqwe`

#### ACA Environment Variables

##### ACA Environment

- **Variable Name**: `aca-env`
- **Type**: `string`
- **Default Value**: `mlchain-aca-env`

##### ACA Log Analytics Workspace

- **Variable Name**: `aca-loga`
- **Type**: `string`
- **Default Value**: `mlchain-loga`

##### ACA Certificate Path

- **Variable Name**: `aca-cert-path`
- **Type**: `string`
- **Default Value**: `./certs/mlchaincert.pfx`

##### ACA Certificate Password

- **Variable Name**: `aca-cert-password`
- **Type**: `string`
- **Default Value**: `password`

##### ACA Mlchain Customer Domain

- **Variable Name**: `aca-mlchain-customer-domain`
- **Type**: `string`
- **Default Value**: `mlchain.khulnasoft.com`

#### Container Images

##### Mlchain API Image

- **Variable Name**: `mlchain-api-image`
- **Type**: `string`
- **Default Value**: `mlchain/mlchain-api:0.6.11`

##### Mlchain Sandbox Image

- **Variable Name**: `mlchain-sandbox-image`
- **Type**: `string`
- **Default Value**: `mlchain/mlchain-sandbox:0.2.1`

##### Mlchain Web Image

- **Variable Name**: `mlchain-web-image`
- **Type**: `string`
- **Default Value**: `mlchain/mlchain-web:0.6.11`