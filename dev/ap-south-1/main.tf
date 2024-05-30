module "s3-bucket" {
  source      = "../../module/s3"
  bucket_name = var.bucket_name
  user_arn = "arn:aws:iam:123456789000:user/kiran"
  
  tags = {
    Name = var.bucket_name
    Env  = var.env
  } 
}
