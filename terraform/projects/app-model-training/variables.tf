#
# Variables used in the model training project
#

variable "instance_ami_filter_name" {
  type    = "string"
  default = "ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"
}
