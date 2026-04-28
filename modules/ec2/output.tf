output "aws_instance_ip" {
    value = aws_instance.Ansible-server[*].public_ip
}

output "aws_instance_id" {
    value = aws_instance.Ansible-server[*].id
}

output "control_node_ip" {
    description = "Public IP of the control node"
    value = aws_instance.Ansible-server[0].public_ip
}

output "worker_nodes_ips" {
    description = "Public IPs of worker nodes"
    value = aws_instance.Ansible-server[*].public_ip
}