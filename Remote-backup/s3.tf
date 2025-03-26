resource "aws_s3_bucket" "remote_s3"{
    bucket = "remote-state-bucket-demo-1"

    tags = {
    Name        = "remote-state-bucket-demo-1"
  }
}