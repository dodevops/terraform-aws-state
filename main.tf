resource "aws_s3_bucket" "s3-bucket" {
  bucket = "${lower(var.project)}${lower(var.stage)}statebucket"
}

resource "aws_dynamodb_table" "dynamodb-table" {
  name           = "${lower(var.project)}${lower(var.stage)}statelock"
  hash_key       = "LockID"
  read_capacity  = 5
  write_capacity = 5

  attribute {
    name = "LockID"
    type = "S"
  }
}
