//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/org-terraform/compute/aws"
  version = "1.0.0"

  aws_region = "us-east-1"
  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCxk/lBGvcT3l5ylbjR4gnTBmn5tGh94KEML47llkV5KI0Q6WNtaLa67AwPereTD5AedqOTD+RWIrsMcJVxsIVYrPyKYhzSynoufUwxikvqM2UoPHygEhiatJqBpozCIGvL9HHJsdjecK/uQ/nTCSAKSmFdI86VoANbeVYArEI/JrRs949UOhacpXCJFx4k4pBn17JaX/UWu+MtZodQ3YBCLDb41TYABDBgaaOmu5YN5m2w+bICbwOHe2opsOYg4nnBtOgEeziyC2/zcyoBi1/vbp5mE25QHjvnUF+mblGPNopoWbVmZ5maDhQVN8CLOz69iof5TA7JmLKwKWVx2y4ZCYtpNsH9Nl6hEeLaxO1xrCODZqIMTq9rdg2aoTP7MXKOfMgh/3Awm2vgO4wRUt/Sp8cHiEfvjUISYRl2ndATmzCgLTSW03A7loTB6K3gL7e30U1Pvp1xqyn/RsndLDTt/7F1+EcyXZ6KW4AuGVaNjlmaZT2wwZVJr92JljRBfPE= karlo@T480S-CChacon"
  public_sg = "${module.networking.public_sg}"
  public_subnets = "${module.networking.public_subnets}"
}

module "networking" {
  source  = "app.terraform.io/org-terraform/networking/aws"
  version = "1.0.0"

  access_ip = "0.0.0.0/0"
  aws_region = "us-east-1"
}