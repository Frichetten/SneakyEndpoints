/* The idea behind this is to have an S3 bucket you can push scripts to and then
   pull down on the host */

resource "aws_s3_bucket" "sneakyendpoints_transfer_bucket" {
  bucket_prefix = "sneakyendpoints-trasfer-bucket-"
  acl           = "private"
  force_destroy = true
}