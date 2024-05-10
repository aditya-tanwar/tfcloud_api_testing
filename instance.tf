resource "aws_instance" "test-servers01" {
  count = 1
  ami           = "ami-06640050dc3f556bb"
  instance_type = "t2.micro"
  subnet_id = "subnet-05313f912d5ceb2e9"
  associate_public_ip_address = true
  lifecycle {
    prevent_destroy = false

  }

  tags = {
    Name = "ExampleAppServerInstance01-${count.index}"
  }


}