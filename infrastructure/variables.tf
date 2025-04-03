variable "domain_name" {
  type        = string
  description = "The primary domain name for the website (e.g., snasir.ca)"
}

variable "github_pages_domain" {
  type        = string
  description = "The GitHub Pages domain (e.g., username.github.io)"
  default     = "snasirca.github.io"
}

variable "aws_region" {
  type        = string
  description = "AWS region to deploy resources to"
  default     = "us-east-1"
}
