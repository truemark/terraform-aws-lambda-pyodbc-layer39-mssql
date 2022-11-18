output "lambda_layer_version_arn" {
  value = join("", aws_lambda_layer_version.layer.*.arn)
}

output "lambda_layer_version_id" {
  value = join("", aws_lambda_layer_version.layer.*.id)
}
