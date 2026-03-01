variable "name" {
    type = string
    default = "locals"
}

variable "enviornment" {
    type = string
    default = "dev"
}

variable "ec2_tags" {
    default = {
        Name = "locals-demo"
        Enviornment = "prod"
    }
}

variable "sg_tags" {
    default = {
        name = "locals-demo"
    }
}