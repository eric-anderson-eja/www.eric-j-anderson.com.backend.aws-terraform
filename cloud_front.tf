resource "aws_cloudfront_distribution" "e3dvy02xdmlnpf" {
  aliases = ["www.eric-j-anderson.com", aws_route53_record._hostedzone_z09305453nx937tz4twk0_eric_j_anderson_com__soa.fqdn]
  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD"]
    cache_policy_id        = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    cached_methods         = ["GET", "HEAD"]
    compress               = true
    target_origin_id       = aws_s3_bucket.www_eric_j_anderson_com.bucket_regional_domain_name
    viewer_protocol_policy = "redirect-to-https"
  }

  default_root_object = "index.html"
  enabled             = true
  http_version        = "http2"
  is_ipv6_enabled     = true
  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "www.eric-j-anderson.com.s3.us-east-2.amazonaws.com"
    origin_id           = "www.eric-j-anderson.com.s3.us-east-2.amazonaws.com"
    origin_access_control_id = "EWSTRX9HPAKMN"
  }

  price_class = "PriceClass_100"
  restrictions {
    geo_restriction {
      restriction_type = "none"
    }

  }

  viewer_certificate {
    acm_certificate_arn      = "arn:aws:acm:us-east-1:248882477880:certificate/07204c09-2783-40c4-99a5-55a576110727"
    minimum_protocol_version = "TLSv1.2_2021"
    ssl_support_method       = "sni-only"
  }

  wait_for_deployment = true
}

resource "aws_cloudfront_origin_access_identity" "e191rum7gqyp11" {
  comment = "access-identity-www.eric-j-anderson.com.s3.us-east-2.amazonaws.com"
}

