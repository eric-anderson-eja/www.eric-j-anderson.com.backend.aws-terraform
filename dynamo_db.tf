resource "aws_dynamodb_table" "cr_visitorcounter" {
  attribute {
    name = "VisitorCounter"
    type = "S"
  }

  billing_mode = "PROVISIONED"
  hash_key     = "VisitorCounter"
  name         = "CR_VisitorCounter"
  point_in_time_recovery {
    enabled = false
  }

  read_capacity = 1
  ttl {
    attribute_name = ""
  }

  write_capacity = 1
}

