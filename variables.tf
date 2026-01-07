variable "flow" {
  type    = string
  default = "24-01"
}

variable "cloud_id" {
  type    = string
  default = "b1gda8ejc0j5epc2g5tc"
}
variable "folder_id" {
  type    = string
  default = "b1g5djvhkqa04dmcuueq"
}

variable "test" {
  type = map(number)
  default = {
    cores         = 2
    memory        = 1
    core_fraction = 20
  }
}

