variable "fruits"{
  default = [ "apple", "orange", "kiwi"]
}

output "fruits"{
  #value = var.fruits[3]
  value = element(var.fruits, 3)
}