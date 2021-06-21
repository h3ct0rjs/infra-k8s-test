variable "region" {

  type    = string
  default = "sfo3"
}

variable "vpcname" {
  type    = string
  default = "k8s-vpc"
}

variable "k8s_count" {
  type    = number
  default = 2
}

variable "do_token_h" {
  type = string
}
