variable "fruits"{
  default = [ "apple", "orange", "kiwi"]
}

output "fruits"{
  #value = var.fruits[3]
  value = element(var.fruits, 3)
}

variable "fruits_with_stock" {
  default = {
    apple = 100
  }
}
output "fruits_with_stock"{
  value = try(var.fruits_with_stock["banana"],0)
}