provider aws {
    region = var.region
}

terraform {
  backend "s3" {
    bucket = "sonarqube-group2"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}

resource aws_instance web {
    ami           = var.ami_id
    instance_type = var.ami_id
}

