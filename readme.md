# Assignment Instructions

## Prerequisites

### Install terraform
    [terraform](https://www.terraform.io/downloads.html)
    [aws cli](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
    [kubectl](https://kubernetes.io/docs/tasks/tools/)


### setup your account creds
on terminal export following

export AWS_ACCESS_KEY_ID=<put access key here>
export AWS_SECRET_ACCESS_KEY=<put secret key here>
export AWS_DEFAULT_REGION=us-east-1


## Provision the infrastructure


### Create cluster VPC and network

    cd eks_vpc
    terraform init 
    terraform apply


### Copy the output of the cluster vpc to cluster resource
 
    cd eks_vpc
    terraform output

   *** copy the output and paste into following file ***
    eks_cluster/terrafrom.tfstate 

    Note: this step is manual for time being...this can be automated using `terraform_remote_state`

### Create cluster resources
    cd eks_cluster              
    terraform init 
    terraform apply

### create a aws-auth configmap

    terrafrom output authconfig  > auth.yml

remove first and last line from the auth.yml


kubectl create -f auth.yml



#### Verify the cluster

    kubectl get nodes


## Destroy the infrastructure

### Destroy cluster resources
    
    cd eks_cluster
    terraform destroy
    cd ../eks_vpc
    terraform destroy
    