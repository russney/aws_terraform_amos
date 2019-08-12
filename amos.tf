provider "aws" {
    access_key = ""
    secret_key = ""
    region     = "us-east-2"
}

resource "aws_instance" "generic_template" {
    ami           = "ami-0cd3dfa4e37921605"
    count         = 1
    instance_type = "t2.micro"
    key_name      = "amos_kp"
#   subnet_id     = ""
    security_groups = ["amos_sg"]

    tags {
        Name = "amos-${count.index}"
    }
}
