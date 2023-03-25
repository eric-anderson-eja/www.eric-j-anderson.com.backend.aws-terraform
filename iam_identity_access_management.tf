resource "aws_iam_access_key" "akiatt4unhm4gnpk3c5j" {
  status = "Active"
  user   = aws_iam_user.cli_prod_admin.id
}

resource "aws_iam_policy" "arn_aws_iam__248882477880_policy_service_role_awslambdabasicexecutionrole_5888acac_5428_4c66_9b84_65c8912bed86" {
  name   = "AWSLambdaBasicExecutionRole-5888acac-5428-4c66-9b84-65c8912bed86"
  path   = "/service-role/"
  policy = "{\"Statement\":[{\"Action\":\"logs:CreateLogGroup\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:logs:us-east-2:248882477880:*\"},{\"Action\":[\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:logs:us-east-2:248882477880:log-group:/aws/lambda/Save_To_Dynamo:*\"]}],\"Version\":\"2012-10-17\"}"
}

resource "aws_iam_role" "awsreservedsso_administratoraccess_7cb6bc53ef75b755" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Federated\":\"arn:aws:iam::248882477880:saml-provider/AWSSSO_d814935c0fe88dfb_DO_NOT_DELETE\"},\"Action\":[\"sts:AssumeRoleWithSAML\",\"sts:TagSession\"],\"Condition\":{\"StringEquals\":{\"SAML:aud\":\"https://signin.aws.amazon.com/saml\"}}}]}"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = 43200
  name                 = "AWSReservedSSO_AdministratorAccess_7cb6bc53ef75b755"
  path                 = "/aws-reserved/sso.amazonaws.com/us-east-2/"
}

resource "aws_iam_role" "awsserviceroleforapigateway" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ops.apigateway.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "The Service Linked Role is used by Amazon API Gateway."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForAPIGateway"
  path                 = "/aws-service-role/ops.apigateway.amazonaws.com/"
}

resource "aws_iam_role" "awsserviceroleforapplicationautoscaling_dynamodbtable" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"dynamodb.application-autoscaling.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingDynamoDBTablePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForApplicationAutoScaling_DynamoDBTable"
  path                 = "/aws-service-role/dynamodb.application-autoscaling.amazonaws.com/"
}

resource "aws_iam_role" "awsservicerolefororganizations" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"organizations.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Service-linked role used by AWS Organizations to enable integration of other AWS services with Organizations."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForOrganizations"
  path                 = "/aws-service-role/organizations.amazonaws.com/"
}

resource "aws_iam_role" "awsserviceroleforsso" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"sso.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Service-linked role used by AWS SSO to manage AWS resources, including IAM roles, policies and SAML IdP on your behalf."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSSOServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForSSO"
  path                 = "/aws-service-role/sso.amazonaws.com/"
}

resource "aws_iam_role" "awsserviceroleforsupport" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"support.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Enables resource access for AWS to provide billing, administrative and support services"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForSupport"
  path                 = "/aws-service-role/support.amazonaws.com/"
}

resource "aws_iam_role" "awsservicerolefortrustedadvisor" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"trustedadvisor.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForTrustedAdvisor"
  path                 = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

resource "aws_iam_role" "lambda_dynamodb" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"lambda.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Allows Lambda functions to call AWS services on your behalf."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"]
  max_session_duration = 3600
  name                 = "Lambda-DynamoDB"
  path                 = aws_api_gateway_resource.ayu3ot44vf_8yct27m244.path
}

resource "aws_iam_role" "organizationaccountaccessrole" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::425238449318:root\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = 3600
  name                 = "OrganizationAccountAccessRole"
  path                 = aws_api_gateway_resource.ayu3ot44vf_8yct27m244.path
}

resource "aws_iam_role" "save_to_dynamo_role_m37amhya" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"lambda.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
  }

  managed_policy_arns  = [aws_iam_policy.arn_aws_iam__248882477880_policy_service_role_awslambdabasicexecutionrole_5888acac_5428_4c66_9b84_65c8912bed86.id]
  max_session_duration = 3600
  name                 = "Save_To_Dynamo-role-m37amhya"
  path                 = "/service-role/"
}

resource "aws_iam_role_policy_attachment" "awsreservedsso_administratoraccess_7cb6bc53ef75b755_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = aws_iam_role.awsreservedsso_administratoraccess_7cb6bc53ef75b755.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforapigateway_arn_aws_iam__aws_policy_aws_service_role_apigatewayservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"
  role       = aws_iam_role.awsserviceroleforapigateway.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforapplicationautoscaling_dynamodbtable_arn_aws_iam__aws_policy_aws_service_role_awsapplicationautoscalingdynamodbtablepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingDynamoDBTablePolicy"
  role       = aws_iam_role.awsserviceroleforapplicationautoscaling_dynamodbtable.id
}

resource "aws_iam_role_policy_attachment" "awsservicerolefororganizations_arn_aws_iam__aws_policy_aws_service_role_awsorganizationsservicetrustpolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"
  role       = aws_iam_role.awsservicerolefororganizations.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforsso_arn_aws_iam__aws_policy_aws_service_role_awsssoservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSSOServiceRolePolicy"
  role       = aws_iam_role.awsserviceroleforsso.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforsupport_arn_aws_iam__aws_policy_aws_service_role_awssupportservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = aws_iam_role.awsserviceroleforsupport.id
}

resource "aws_iam_role_policy_attachment" "awsservicerolefortrustedadvisor_arn_aws_iam__aws_policy_aws_service_role_awstrustedadvisorservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = aws_iam_role.awsservicerolefortrustedadvisor.id
}

resource "aws_iam_role_policy_attachment" "lambda_dynamodb_arn_aws_iam__aws_policy_amazondynamodbfullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  role       = aws_iam_role.lambda_dynamodb.id
}

resource "aws_iam_role_policy_attachment" "organizationaccountaccessrole_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = aws_iam_role.organizationaccountaccessrole.id
}

resource "aws_iam_role_policy_attachment" "save_to_dynamo_role_m37amhya_arn_aws_iam__248882477880_policy_service_role_awslambdabasicexecutionrole_5888acac_5428_4c66_9b84_65c8912bed86" {
  policy_arn = aws_iam_policy.arn_aws_iam__248882477880_policy_service_role_awslambdabasicexecutionrole_5888acac_5428_4c66_9b84_65c8912bed86.id
  role       = aws_iam_role.save_to_dynamo_role_m37amhya.id
}

resource "aws_iam_saml_provider" "arn_aws_iam__248882477880_saml_provider_awssso_d814935c0fe88dfb_do_not_delete" {
  name                   = "AWSSSO_d814935c0fe88dfb_DO_NOT_DELETE"
  saml_metadata_document = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><md:EntityDescriptor xmlns:md=\"urn:oasis:names:tc:SAML:2.0:metadata\" entityID=\"https://portal.sso.us-east-2.amazonaws.com/saml/assertion/NDI1MjM4NDQ5MzE4X2lucy1hNzQwMTQwMzUzZjQ5Nzgz\">    <md:IDPSSODescriptor WantAuthnRequestsSigned=\"false\" protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\">        <md:KeyDescriptor use=\"signing\">            <ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\">                <ds:X509Data>                    <ds:X509Certificate>MIIDBjCCAe6gAwIBAgIECFuMAzANBgkqhkiG9w0BAQsFADBFMRYwFAYDVQQDDA1hbWF6b25hd3MuY29tMQ0wCwYDVQQLDARJREFTMQ8wDQYDVQQKDAZBbWF6b24xCzAJBgNVBAYTAlVTMB4XDTIyMTIxMDE5NDMzOFoXDTI3MTIxMDE5NDMzOFowRTEWMBQGA1UEAwwNYW1hem9uYXdzLmNvbTENMAsGA1UECwwESURBUzEPMA0GA1UECgwGQW1hem9uMQswCQYDVQQGEwJVUzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAL4Jx2nrH7asREo5I+F/NJtbY6X2BtOAVvRhYbIV4HtlCb4BqGiq3h9gUo4EH2GmY2RwIpkKgmWRFna9ZkRT21QMNMRFz9O88SN+mhHgrVY6/pMk1QwS7aex70pW7NgUJDjnWmbjJPQRXIuLJxkHcHCgL6ULx7lxuWfYkdgsZXFmxL4kN9fBChZQaOKcHgBDnXwsrDpkwqmsHGPSnsW6nnvA1cAsQiO3xQoqX38GKjbjjzyLwK4ASl3NgwH3iBz2Naz6gRiHjXuANnG8xwnmd7EXW2yMMb+aVOFZQ4D7Sa7hg5dddqrfQjRRsiEq9WgXLjTTdrSwagSEM83vWrqpX/MCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAf82sGKSHqiJVI3zcidBcLMC3cLyf4DrZnD4CYa6SmMnzjG8XANG7ySl3M0dVwNY4X66O82VmrUoA5uKHHyC6PflagjRw1Yozd6vYBoE9d6dIJ2nL/UK1jFwxFr1m+/phTD5yeR9q/lpLIdHuVoLsdUPq6ll9OZW96xCm8jqUZPInLnjaVNC/JwR0D1fEKGnGWuNWTVLNLzjo86BWhm14ylaeoB3wDaa1rgxmnQrHUlKbNTYQjXhj9oWb8/iWCIR8pFBt6j3zTkhMWtmKwb7FgLGxzv+h+695GK9FNh/7N+S5TPXOovBsHRkW4VI819YyaCvg6IJ6bVCXz5/vLljt4g==</ds:X509Certificate>                </ds:X509Data>            </ds:KeyInfo>        </md:KeyDescriptor>        <md:SingleLogoutService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST\" Location=\"https://portal.sso.us-east-2.amazonaws.com/saml/logout/NDI1MjM4NDQ5MzE4X2lucy1hNzQwMTQwMzUzZjQ5Nzgz\"/>        <md:SingleLogoutService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://portal.sso.us-east-2.amazonaws.com/saml/logout/NDI1MjM4NDQ5MzE4X2lucy1hNzQwMTQwMzUzZjQ5Nzgz\"/>        <md:NameIDFormat>urn:oasis:names:tc:SAML:2.0:nameid-format:persistent</md:NameIDFormat>        <md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST\" Location=\"https://portal.sso.us-east-2.amazonaws.com/saml/assertion/NDI1MjM4NDQ5MzE4X2lucy1hNzQwMTQwMzUzZjQ5Nzgz\"/>        <md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://portal.sso.us-east-2.amazonaws.com/saml/assertion/NDI1MjM4NDQ5MzE4X2lucy1hNzQwMTQwMzUzZjQ5Nzgz\"/>    </md:IDPSSODescriptor></md:EntityDescriptor>"
}

resource "aws_iam_user" "cli_prod_admin" {
  name = "CLI-Prod-Admin"
  path = aws_api_gateway_resource.ayu3ot44vf_8yct27m244.path
}

resource "aws_iam_user_policy_attachment" "cli_prod_admin_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = aws_iam_user.cli_prod_admin.id
}

