resource "aws_route53_record" "_hostedzone_z09305453nx937tz4twk0_eric_j_anderson_com__a" {
  alias {
    evaluate_target_health = false
    name                   = "d9er4lyqypbfs.cloudfront.net"
    zone_id                = aws_cloudfront_distribution.e3dvy02xdmlnpf.hosted_zone_id
  }

  name    = "eric-j-anderson.com"
  type    = "A"
  zone_id = aws_route53_zone._hostedzone_z09305453nx937tz4twk0.id
}

resource "aws_route53_record" "_hostedzone_z09305453nx937tz4twk0_eric_j_anderson_com__aaaa" {
  alias {
    evaluate_target_health = false
    name                   = "d9er4lyqypbfs.cloudfront.net"
    zone_id                = aws_cloudfront_distribution.e3dvy02xdmlnpf.hosted_zone_id
  }

  name    = "eric-j-anderson.com"
  type    = "AAAA"
  zone_id = aws_route53_zone._hostedzone_z09305453nx937tz4twk0.id
}

resource "aws_route53_record" "_hostedzone_z09305453nx937tz4twk0_eric_j_anderson_com__ns" {
  name    = "eric-j-anderson.com"
  records = ["ns-1826.awsdns-36.co.uk.", "ns-574.awsdns-07.net.", "ns-306.awsdns-38.com.", "ns-1499.awsdns-59.org."]
  ttl     = 172800
  type    = "NS"
  zone_id = aws_route53_zone._hostedzone_z09305453nx937tz4twk0.id
}

resource "aws_route53_record" "_hostedzone_z09305453nx937tz4twk0_eric_j_anderson_com__soa" {
  name    = "eric-j-anderson.com"
  records = ["ns-574.awsdns-07.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
  ttl     = 900
  type    = "SOA"
  zone_id = aws_route53_zone._hostedzone_z09305453nx937tz4twk0.id
}

resource "aws_route53_zone" "_hostedzone_z09305453nx937tz4twk0" {
  name = "eric-j-anderson.com"
}

