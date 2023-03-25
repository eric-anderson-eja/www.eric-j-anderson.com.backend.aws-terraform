resource "aws_lambda_function" "save_to_dynamo" {
  filename      = "${path.module}/Save_To_Dynamo.zip"
  architectures = ["x86_64"]
  environment {
    variables = {
      VC_DB = aws_dynamodb_table.cr_visitorcounter.id
    }

  }

  ephemeral_storage {
    size = 512
  }

  function_name                  = "Save_To_Dynamo"
  handler                        = "handler.lambda_handler"
  memory_size                    = 128
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = aws_iam_role.lambda_dynamodb.arn
  runtime                        = "python3.9"
  source_code_hash               = "zmIZ8mz0RRJhzF+Q7Vrs/zq0DCpVBNLU3yUnBeYT4q0="
  timeout                        = 3
  tracing_config {
    mode = "PassThrough"
  }

}

