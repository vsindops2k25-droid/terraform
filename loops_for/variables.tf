variable "instances" {
    default = {
        mongodb = "t3.micro"
        redis = "t3.micro"
        mysql = "t3.small"
    }
}

variable "zone_id" {
    default = "Z05097823TWRPZG8NY41Q"
}

variable "domain_name" {
    default = "dops.fun"
}