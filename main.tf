provider "aws" {
  region = "us-west-2"  # Change to your preferred AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"               # Instance type (can be changed)

  tags = {
    Name = "Terraform Example EC2"
  }
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
