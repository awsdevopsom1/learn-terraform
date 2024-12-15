variable "sample" {
   default = "hello"
}

output "sample" {
    value = var.sample  
  
}


variable "sample2" {
   default = ["apple", "banana", "orange"]
}

output "sample2" {
    value = var.sample2[1] 
  
}

variable "map" {
    default = {
        apple = 100
        banana = 200
        orange = 10
    }
  
}

output "quantity" {
  value = var.map["apple"]
}

output "quantity_apple" {
    value = "fruit apple is having only ${var.map["apple"]} quantity"
  
}