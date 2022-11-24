
variable "my_map" {
  type    = map(number)
  default = {
    "alpha" = 2
    "bravo" = 3
  }
}
variable "my_map2" {
  type    = map(string)
  default = {
    "alpha1" = "dev"
    "bravo1" = "prod"
  }
}


variable "my_map3" {
  type    = map(bool)
  default = {
    "alpha2" = true
    "bravo2" = false
  }
}

output "map" {
  value = var.my_map
}

output "alpha_value" {
  value = var.my_map["alpha"]
}


output "map2" {
  value = var.my_map2
}

output "alpha_value2" {
  value = var.my_map2["alpha1"]
}

output "map3" {
  value = var.my_map3
}

output "alpha_value3" {
  value = var.my_map3["alpha2"]
}