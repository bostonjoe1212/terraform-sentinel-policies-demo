module "tfplan-functions" {
  source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "./aws-functions/aws-functions.sentinel"
}

policy "restrict-ingress-sg-rule-ssh" {
  source = "./restrict-ingress-sg-rule-ssh.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "restrict-launch-configuration-instance-type" {
  source = "./restrict-launch-configuration-instance-type.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "check-ec2-cost-center-tag" {
  source = "./check-ec2-cost-center-tag.sentinel"
  enforcement_level = "hard-mandatory"
}