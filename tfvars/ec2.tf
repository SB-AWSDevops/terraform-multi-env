resource "aws_instance" "expense"{

    for_each = var.instance_names
    ami = data.aws_ami.ami_id.id
    instance_type = each.value
    #vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    tags = merge(
        var.common_tags,
        {
            Name = "${each.key}"
            Module = "${each.key}"
            Env = var.env
        }
    )

}