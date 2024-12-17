module "test"{
  for_each = var.instance
  source = "./test"
}

variable "instance"{
    default = {
        frontend = {}
        backend = {}
        mysql = {}
    }

  }