variable "instance_names"{

    # default = {

    #     db-dev = "t3.small"
    #     backend-dev = "t3.micro"
    #     frontend-dev = "t3.micro"
    # }
}

variable "domain_names"{
    default = "surisetty.online"
}

variable "zone_id"{

    default = "Z012106839ZHX7ESVKOOI"
}

variable "common_tags"{

    default = {

        Project = "Expense"
        Terraform = "true"
    }
}

variable "env"{
    # default = "dev"
}