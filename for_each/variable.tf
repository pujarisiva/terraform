/* variable "instances" {
    type = map
    default = {
        mangodb = "t3.micro"
        mysql = "t3.small"
        user = "t3.micro"
        shipping = "t3.small"
    }
  
} */

variable "instances" {
    type = list
    default = ["mangodb", "mysql"]
}

variable "zone_id" {
    #type = string
    default = "Z029824131VCTYVTV38CJ"
}

variable "domain_name" {
    default =  "riddhi.shop"
    type = string
}