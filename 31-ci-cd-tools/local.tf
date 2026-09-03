locals {
  ami_id = data.aws_ami.joindevops.id
  sonar_ami_id = data.aws_ami.sonarqube.id
  common_tags={
    var.project = project
    var.environment = environment
    terraform =true

  }
    # public subnet 1A AZ
  public_subnet_id = data.aws_ssm_parameter.public_subnet_ids
  jenkins_sg_id = data.aws_ssm_parameter.jenkins_sg_id
  jenkins_agent_sg_id = data.aws_ssm_parameter.jenkins_agent_sg_id
  sonar_sg_id = data.aws_ssm_parameter.sonar_sg_id
  runner_sg_id = data.aws_ssm_parameter.runner_sg_id
}