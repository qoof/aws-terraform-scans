resource "aws_iam_role" "qoof_cross_account_role" {
  name = "tf-qoof"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::948239797774:root"
      },
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "${var.qoof_external_id}"
        }
      }
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "qoof_cross_account_attach" {
  role       = "${aws_iam_role.qoof_cross_account_role.name}"
  policy_arn = "arn:aws:iam::aws:policy/SecurityAudit"
}
