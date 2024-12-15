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
