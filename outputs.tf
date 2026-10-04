output "ansible-server-ip"{
    value = {
        for key, instance in aws_instance.ansible-server :
        key => instance.public_ip 
    }
}