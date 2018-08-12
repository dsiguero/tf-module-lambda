output "function_arn" {
  value = "${aws_lambda_function.lambda_function.arn}"
}

output "function_version_arn" {
  value = "${aws_lambda_function.lambda_function.qualified_arn}"
}

output "function_api_gw_arn" {
  value = "${aws_lambda_function.lambda_function.invoke_arn}"
}

output "function_version" {
  value = "${aws_lambda_function.lambda_function.version}"
}

output "last_modified" {
  value = "${aws_lambda_function.lambda_function.last_modified}"
}
