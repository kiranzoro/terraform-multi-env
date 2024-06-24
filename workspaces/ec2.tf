resource "aws_instance" "db" {
    ami = "ami-031d574cddc5bb371"
    vpc_security_group_ids = ["sg-0c4aa78fe1bbd2e9e"]
    instance_type = lookup(var.instance_type, terraform.workspace)
}