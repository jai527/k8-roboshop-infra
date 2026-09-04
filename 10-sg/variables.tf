variable "project" {
    type = string
    default = "roboshop"
  
}

variable "environment" {
    type = string
    default = "dev"
  
}

variable "sg_names" {
    type = list(string)
    default = [
        # databases
        "mongodb", "redis", "rabbitmq", "mysql",

        #ingressALB
        "ingress_alb",

        # bastion
        "bastion",

        #openvpn
        "openvpn",

        "eks_control_plane","eks_node",
        
        "jenkins","jenkins_agent",
        "sonar","runner"
    ]
  
}