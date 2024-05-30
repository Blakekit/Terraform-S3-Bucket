resource "aws_s3_bucket_policy" "bucket-policy" {
  bucket = aws_s3_bucket.s3-bucket.id
  policy = jsonencode({
    "Version" : "2008-10-17",
    "Id" : "Policy",
    "Statement" : [
      {
        "Sid" : "Allow",
        "Effect" : "Allow",
        "Principal" : {
          "AWS" : var.user_arn
        },
        "Action" : [
          "s3:PutObject",
          "s3:GetObjet"
        ],
        "Resource" : [
          "${aws_s3_bucket.s3-bucket.arn}/docs/*"
        ]
      }
    ]
  })
}
