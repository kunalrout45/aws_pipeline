# AWS Provider Configuration
provider "aws" {
 region = "us-east-1" # Set your preferred region
}
# EC2 Instance Configuration
resource "aws_instance" "my_ec2" {
 ami = "ami-0984f4b9e98be44bf" # Replace with actual AMI ID
 instance_type = "t2.micro" # Free-tier eligible
 tags = {
 Name = "MyEC2Instance"
 }
}
# S3 Bucket Configuration
resource "ws_s3_bucket" "my_bucket" {
 bucket = "bucket-kunal1" # Use a globally unique bucket name
 acl = "private"
