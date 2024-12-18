env = "dev"
ami = "ami-0b4f379183e5706b9"
sg_id = ["sg-053f31aa61223c45f"]
zone_id = "Z0705553LI8IW1JSJIQR"
components = {
    frontend = {
        name = "frontend"
        instance_type = "t3.micro"
    }
    backend = {
        name = "backend"
        instance_type = "t3.micro"
    }  
    mysql = {
        name = "mysql"
        instance_type = "t3.micro"
    }  
}
