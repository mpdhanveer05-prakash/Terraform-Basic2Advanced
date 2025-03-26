resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "${var.env}-module-bucket"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = var.hash_key

  attribute {
    name = var.hash_key
    type = "S"
  }
  tags = {
    Name = "${var.env}-module-bucket"
    Environment = var.env
  }

}