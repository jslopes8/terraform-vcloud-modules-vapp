variable "create" {
    type    = bool
    default = true
}

variable "vapp" {
    type    = list(map(string))
    default = []
}
variable "depends" {
    type    = list(string)
    default = []
}
variable "default_metadata" {
    type    = map(string)
    default = {}
}
