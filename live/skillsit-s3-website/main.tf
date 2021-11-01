provider "aws" {
  region = "ap-south-1"
  shared_credentials_file = "C:\\AWS\\bin\\credentials"
  profile = "default"

}

module "s3-website" {
  source = "../../modules/s3-website"

  //bucket_name = "mys3-web0"
}

output "website_endpoint" {
  value = module.s3-website.website_endpoint
}

