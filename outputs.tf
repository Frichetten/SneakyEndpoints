output "transfer_bucket_name" {
  value = aws_s3_bucket.sneakyendpoints_transfer_bucket.id
}

output "sneakendpoints_host_id" {
  value = aws_instance.sneakyendpoints_host.id
}

output "notice" {
  value = "Note: You may have to wait 2-4 minutes for the instance to connect to SSM. If the instance still isn't connectable after this time, reboot the EC2 instance (there a bit of a delay between the endpoints coming up and the EC2 instance connecting"
}

output "warning" {
    value = "Note: Do not forget to delete the infrastructure when you're finished. I take no responsibility for charges incurred on your account for using this project."
}
