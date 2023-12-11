# Configure the AWS provider with your AWS credentials and set the region to "us-east-1" (North Virginia)
provider "aws" {
  region     = "us-east-1"
  access_key = "your-access-key"     # Replace with your AWS access key
  secret_key = "your-secret-key"     # Replace with your AWS secret key
}

