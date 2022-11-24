
variable "a" {
  type    = list(string)
  default = ["foo", "bar", "baz", "good", "ops" ]
}

output "a" {
  value = var.a
}

output "b" {
  value = element(var.a, 3)
}

output "c" {
  value = length(var.a)
}
