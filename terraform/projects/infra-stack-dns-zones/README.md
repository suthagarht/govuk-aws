## Project: infra-stack-dns-zones

This module creates the internal and external DNS zones used by our stacks.

When we select to create a DNS zone, the domain name and ID of the zone that
manages the root domain needs to be provided to register the DNS delegation
and NS servers of the created zone. The domain name of the new zone is created
from the variables provided as <stackname>.<root_domain_internal|external_name>

We can't create a internal DNS zone per stack because on AWS we can't overlap
internal domain names. Instead we use the same internal zone for all the sacks
and we use the name schema `<service>.<stackname>.<root_domain>`

The outputs of this project should be used by the stacks to create the right
service records on the internal and external DNS zones.


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws_region | AWS region | string | `eu-west-1` | no |
| create_external_zone | Create an external DNS zone (default true) | string | `true` | no |
| remote_state_bucket | S3 bucket we store our terraform state in | string | - | yes |
| remote_state_infra_vpc_key_stack | Override infra_vpc remote state path | string | `` | no |
| root_domain_external_name | External DNS root domain name. Override default for Integration, Staging, Production if create_external_zone is true | string | `mydomain.external` | no |
| root_domain_internal_name | Internal DNS root domain name. Override default for Integration, Staging, Production if create_internal_zone is true | string | `mydomain.internal` | no |
| stackname | Stackname | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| external_domain_name | Route53 External Domain Name |
| external_zone_id | Route53 External Zone ID |
| internal_domain_name | Route53 Internal Domain Name |
| internal_zone_id | Outputs -------------------------------------------------------------- |

