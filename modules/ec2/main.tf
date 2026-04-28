
resource "aws_instance" "Ansible-server" {
    count = var.instance_count
    ami = var.ami
    instance_type = var.instance_type
    key_name = "New-version-key-pair"
    tags = {
      Name = count.index == 0 ? "${var.name}-control" : "${var.name}-worker-${count.index}"
    }
}