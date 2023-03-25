resource "aws_route53_resolver_rule_association" "rslvr_autodefined_assoc_vpc_05ddd616329ce39ab_internet_resolver" {
  name             = "System Rule Association"
  resolver_rule_id = "rslvr-autodefined-rr-internet-resolver"
  vpc_id           = aws_vpc.vpc_05ddd616329ce39ab.id
}

