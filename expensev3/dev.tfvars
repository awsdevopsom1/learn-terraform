env = "dev"
ami = "ami-0b4f379183e5706b9"
sg_id = "jasdjfajdf"
zone_id = "aws_route53_zone.primary.zone_id"
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
