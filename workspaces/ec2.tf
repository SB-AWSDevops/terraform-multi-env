resource "aws_instance" "db"{

    ami = "ami-090252cbe067a9e58"
    instance_type = lookup(var.instance_type,terraform.workspace)
    #vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags = {
        Name = "db server"
        CreatedBy = "PremDas"
    }


}