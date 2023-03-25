resource "aws_api_gateway_deployment" "TctSQ" {
  rest_api_id = aws_api_gateway_rest_api.ayu3ot44vf.id
}

resource "aws_api_gateway_deployment" "mermw8_ayu3ot44vf" {
  rest_api_id = aws_api_gateway_rest_api.ayu3ot44vf.id
}

resource "aws_api_gateway_deployment" "nqpXd" {
  rest_api_id = aws_api_gateway_rest_api.ayu3ot44vf.id
}

resource "aws_api_gateway_resource" "ayu3ot44vf_8yct27m244" {
  parent_id   = ""
  path_part   = ""
  rest_api_id = aws_api_gateway_rest_api.ayu3ot44vf.id
}

resource "aws_api_gateway_resource" "ayu3ot44vf_bpmsj2" {
  parent_id   = "8yct27m244"
  path_part   = "dynamodbmanager"
  rest_api_id = aws_api_gateway_rest_api.ayu3ot44vf.id
}

resource "aws_api_gateway_rest_api" "ayu3ot44vf" {
  api_key_source = "HEADER"
  endpoint_configuration {
    types = ["REGIONAL"]
  }

  minimum_compression_size = -1
  name                     = "Visitor_Counter"
}

resource "aws_api_gateway_stage" "ayu3ot44vf_prod" {
  deployment_id = aws_api_gateway_deployment.TctSQ.id
  rest_api_id   = aws_api_gateway_rest_api.ayu3ot44vf.id
  stage_name    = "Prod"
}

