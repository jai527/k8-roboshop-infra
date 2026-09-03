locals {
  ami_id = data.aws_ami.joindevops.id
  sonar_ami_id = data.aws_ami.sonarqube.id
  common_tags={
    project = var.project 
   environment = var.environment
    terraform =true

  }
    # public subnet 1A AZ
  public_subnet_id = split(",", data.aws_ssm_parameter.public_subnet_ids.value)[0]
  jenkins_sg_id = data.aws_ssm_parameter.jenkins_sg_id.value
  jenkins_agent_sg_id = data.aws_ssm_parameter.jenkins_agent_sg_id.value
  sonar_sg_id = data.aws_ssm_parameter.sonar_sg_id.value
  runner_sg_id = data.aws_ssm_parameter.runner_sg_id.value
}