variable "sampe1" {
    default = "hello"
  
}

output "sample12" {
    value = var.sampe1
  
}

variable "fruits" {
  default = ["apple", "banana", "orange"]
}

output "fruits" {
   value = var.fruits[0]    
}

variable "fruits_first" {
  default = {
    apple = "red"
    banana = "orange"
    grapes = "black"
  }
}

output "fruits1" {
    value = var.fruits_first["apple"]
  
}

output "fruits_colour" {
    value = "Here is the colour of the ${var.fruits_first["banana"]} quantity"
  
}
