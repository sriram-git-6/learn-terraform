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

variable "fruit_stock"{
  default = {
    apple = {
        stock = 100
    }
  }
}

output "fruit_stock"{
  value = lookup(var.fruit_stock["apple"],"price", 2) # this lookup function searches for price value of apple
}