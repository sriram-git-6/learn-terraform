#variable "fruit_name"{
#  default = "apple"
#}
#output "fruit_name" {
#  value = var.fruit_name
#}

# list variable
#variable "fruits"{
#  default = [ "apple", "banana" ]
#}
#output "fruits" {
#  value = [var.fruits[0], var.fruits[1]]
#}

## map variable, plain
variable "fruit_stock" {
  default = {
    apple = 100
    banana = 50
  }
}
output "fruit_stock" {
  value = var.fruit_stock["apple"]
}

#map variable, map of maps
#variable "fruit_stock_price"{
#  default = {
#    apple = {
#      stock = 50
#      price = 200
#    }
#    banana = {
#      stock = 50
#      price = 50
#    }
#  }
#}
#output "fruit_stock_price" {
#  value = var.fruit_stock_price
#}
