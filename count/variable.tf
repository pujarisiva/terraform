variable "instances" {
    type = list
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]

}

variable "zone_id" {
    #type = string
    default = "Z029824131VCTYVTV38CJ"
}

variable "domain_name" {
    default =  "riddhi.shop"
    type = string
}