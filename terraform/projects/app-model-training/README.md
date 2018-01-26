## Project: app-model-training

Node for training machine learning models with a Nvidia GPU.


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws_environment | AWS Environment | string | - | yes |
| aws_region | AWS region | string | `eu-west-1` | no |
| instance_ami_filter_name |  | string | `ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*` | no |
| instance_ami_filter_name | Name to use to find AMI images | string | `` | no |
| stackname | Stackname | string | - | yes |

