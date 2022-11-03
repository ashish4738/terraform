provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAXOWG62Y3C5TEDG7U"
  secret_key = "***********************"
}

resource "aws_instance" "terraf" {
  ami           = "ami-062df10d14676e201"
  instance_type = "t2.micro"
}
resource "docker_image" "centos_python" {
  name = "centos_python"
  build {
    path = "."
  }
}


resource "docker_container" "centos_python_container" {
  name  = "centos_python_container"
  image = docker_imagr.centos_python.latest
}