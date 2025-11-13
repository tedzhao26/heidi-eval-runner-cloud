#  Refs
- https://docs.prefect.io/v3/how-to-guides/deployment_infra/kubernetes


## connect to cloud prefect.io


```shell
prefect cloud login
```

## config worker in prefect.io 


## register container registry

```shell
aws ecr create-repository --repository-name dev-prefect-worker


## Helm

setup repo
setup namespace

Create a Kubernetes secret for the Prefect API key

```shell

kubectl create secret generic prefect-api-key \
--namespace=prefect --from-literal=<prefect-api-key>

```

## find my account id and region

find my account id

```shell
aws sts get-caller-identity --query Account --output text
```


find region

```shell
aws configure get region
```


## need a S3 bucket for some reason

created one : devai-demo-prefect-flows-bucket




# TODO
- pull code from branch not bake into the image