
variable "my_tup" {
  type    = tuple([number, string, bool, number, string])
  default = [4, "hello", false, 5, "falseterraf"]
}

output "tup" {
  value = var.my_tup
}


