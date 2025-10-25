variable "instances" {
    default = ["mongodb","redis","mysql","rabbitmq",'user','cart','catalogue','shipping','payment','frontend']
}

variable "zone_id" {
    default = "Z05097823TWRPZG8NY41Q"
}

variable "domain_name" {
    default = "dops.fun"
}