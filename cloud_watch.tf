resource "aws_cloudwatch_metric_alarm" "targettracking_table_cr_visitorcounter_alarmhigh_0c324c92_88c8_47c0_a7d6_629fdb8f6779" {
  dimensions = {
    TableName = aws_dynamodb_table.cr_visitorcounter.id
  }

  actions_enabled     = true
  alarm_actions       = ["arn:aws:autoscaling:us-east-2:248882477880:scalingPolicy:981ca47f-47dc-490e-977d-70870114e999:resource/dynamodb/table/CR_VisitorCounter:policyName/$CR_VisitorCounter-scaling-policy:createdBy/5951badc-e987-4284-b633-0e8edb09921b"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-2:248882477880:scalingPolicy:981ca47f-47dc-490e-977d-70870114e999:resource/dynamodb/table/CR_VisitorCounter:policyName/$CR_VisitorCounter-scaling-policy:createdBy/5951badc-e987-4284-b633-0e8edb09921b."
  alarm_name          = "TargetTracking-table/CR_VisitorCounter-AlarmHigh-0c324c92-88c8-47c0-a7d6-629fdb8f6779"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "ConsumedWriteCapacityUnits"
  namespace           = "AWS/DynamoDB"
  period              = 60
  statistic           = "Sum"
  threshold           = 42
  treat_missing_data  = "missing"
}

resource "aws_cloudwatch_metric_alarm" "targettracking_table_cr_visitorcounter_alarmhigh_56b30b4d_7878_47ca_8394_c6c8798911c7" {
  dimensions = {
    TableName = aws_dynamodb_table.cr_visitorcounter.id
  }

  actions_enabled     = true
  alarm_actions       = ["arn:aws:autoscaling:us-east-2:248882477880:scalingPolicy:048eda8f-ea44-44fa-891c-552ca35d5e58:resource/dynamodb/table/CR_VisitorCounter:policyName/$CR_VisitorCounter-scaling-policy:createdBy/8afdf799-4a8f-44c3-b343-b64e03a59202"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-2:248882477880:scalingPolicy:048eda8f-ea44-44fa-891c-552ca35d5e58:resource/dynamodb/table/CR_VisitorCounter:policyName/$CR_VisitorCounter-scaling-policy:createdBy/8afdf799-4a8f-44c3-b343-b64e03a59202."
  alarm_name          = "TargetTracking-table/CR_VisitorCounter-AlarmHigh-56b30b4d-7878-47ca-8394-c6c8798911c7"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "ConsumedReadCapacityUnits"
  namespace           = "AWS/DynamoDB"
  period              = 60
  statistic           = "Sum"
  threshold           = 42
  treat_missing_data  = "missing"
}

resource "aws_cloudwatch_metric_alarm" "targettracking_table_cr_visitorcounter_provisionedcapacityhigh_156d418b_005d_4d33_87f3_54ed10b7643a" {
  dimensions = {
    TableName = aws_dynamodb_table.cr_visitorcounter.id
  }

  actions_enabled     = true
  alarm_actions       = ["arn:aws:autoscaling:us-east-2:248882477880:scalingPolicy:048eda8f-ea44-44fa-891c-552ca35d5e58:resource/dynamodb/table/CR_VisitorCounter:policyName/$CR_VisitorCounter-scaling-policy:createdBy/8afdf799-4a8f-44c3-b343-b64e03a59202"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-2:248882477880:scalingPolicy:048eda8f-ea44-44fa-891c-552ca35d5e58:resource/dynamodb/table/CR_VisitorCounter:policyName/$CR_VisitorCounter-scaling-policy:createdBy/8afdf799-4a8f-44c3-b343-b64e03a59202."
  alarm_name          = "TargetTracking-table/CR_VisitorCounter-ProvisionedCapacityHigh-156d418b-005d-4d33-87f3-54ed10b7643a"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 3
  metric_name         = "ProvisionedReadCapacityUnits"
  namespace           = "AWS/DynamoDB"
  period              = 300
  statistic           = "Average"
  threshold           = 1
  treat_missing_data  = "missing"
}

resource "aws_cloudwatch_metric_alarm" "targettracking_table_cr_visitorcounter_provisionedcapacityhigh_e97b88d6_df45_46eb_bb56_8b8f5b47efd7" {
  dimensions = {
    TableName = aws_dynamodb_table.cr_visitorcounter.id
  }

  actions_enabled     = true
  alarm_actions       = ["arn:aws:autoscaling:us-east-2:248882477880:scalingPolicy:981ca47f-47dc-490e-977d-70870114e999:resource/dynamodb/table/CR_VisitorCounter:policyName/$CR_VisitorCounter-scaling-policy:createdBy/5951badc-e987-4284-b633-0e8edb09921b"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-2:248882477880:scalingPolicy:981ca47f-47dc-490e-977d-70870114e999:resource/dynamodb/table/CR_VisitorCounter:policyName/$CR_VisitorCounter-scaling-policy:createdBy/5951badc-e987-4284-b633-0e8edb09921b."
  alarm_name          = "TargetTracking-table/CR_VisitorCounter-ProvisionedCapacityHigh-e97b88d6-df45-46eb-bb56-8b8f5b47efd7"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 3
  metric_name         = "ProvisionedWriteCapacityUnits"
  namespace           = "AWS/DynamoDB"
  period              = 300
  statistic           = "Average"
  threshold           = 1
  treat_missing_data  = "missing"
}

resource "aws_cloudwatch_metric_alarm" "targettracking_table_cr_visitorcounter_provisionedcapacitylow_13743002_c646_4e8f_88c5_8b88bfd60640" {
  dimensions = {
    TableName = aws_dynamodb_table.cr_visitorcounter.id
  }

  actions_enabled     = true
  alarm_actions       = ["arn:aws:autoscaling:us-east-2:248882477880:scalingPolicy:981ca47f-47dc-490e-977d-70870114e999:resource/dynamodb/table/CR_VisitorCounter:policyName/$CR_VisitorCounter-scaling-policy:createdBy/5951badc-e987-4284-b633-0e8edb09921b"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-2:248882477880:scalingPolicy:981ca47f-47dc-490e-977d-70870114e999:resource/dynamodb/table/CR_VisitorCounter:policyName/$CR_VisitorCounter-scaling-policy:createdBy/5951badc-e987-4284-b633-0e8edb09921b."
  alarm_name          = "TargetTracking-table/CR_VisitorCounter-ProvisionedCapacityLow-13743002-c646-4e8f-88c5-8b88bfd60640"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = 3
  metric_name         = "ProvisionedWriteCapacityUnits"
  namespace           = "AWS/DynamoDB"
  period              = 300
  statistic           = "Average"
  threshold           = 1
  treat_missing_data  = "missing"
}

resource "aws_cloudwatch_metric_alarm" "targettracking_table_cr_visitorcounter_provisionedcapacitylow_716bf193_4383_4512_98c8_40463485a6c2" {
  dimensions = {
    TableName = aws_dynamodb_table.cr_visitorcounter.id
  }

  actions_enabled     = true
  alarm_actions       = ["arn:aws:autoscaling:us-east-2:248882477880:scalingPolicy:048eda8f-ea44-44fa-891c-552ca35d5e58:resource/dynamodb/table/CR_VisitorCounter:policyName/$CR_VisitorCounter-scaling-policy:createdBy/8afdf799-4a8f-44c3-b343-b64e03a59202"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-2:248882477880:scalingPolicy:048eda8f-ea44-44fa-891c-552ca35d5e58:resource/dynamodb/table/CR_VisitorCounter:policyName/$CR_VisitorCounter-scaling-policy:createdBy/8afdf799-4a8f-44c3-b343-b64e03a59202."
  alarm_name          = "TargetTracking-table/CR_VisitorCounter-ProvisionedCapacityLow-716bf193-4383-4512-98c8-40463485a6c2"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = 3
  metric_name         = "ProvisionedReadCapacityUnits"
  namespace           = "AWS/DynamoDB"
  period              = 300
  statistic           = "Average"
  threshold           = 1
  treat_missing_data  = "missing"
}

