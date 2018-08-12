resource "aws_lambda_function" "lambda_function" {
  description      = "${var.function_description}"
  filename         = "${var.function_package}"
  function_name    = "${var.function_name}"
  handler          = "${var.function_handler}"
  memory_size      = "${var.function_max_memory}"
  publish          = "${var.publish}"
  role             = "${var.function_iam_role}"
  runtime          = "${var.function_runtime}"
  source_code_hash = "${base64sha256(file(var.function_package))}"
  timeout          = "${var.function_timeout}"

  tags = "${merge(
    var.function_tags,
    map("Environment", "${var.function_environment}")
  )}"

  environment {
    variables = "${var.function_env_variables}"
  }

  vpc_config {
    security_group_ids = ["${var.function_vpc_sg}"]
    subnet_ids         = ["${var.function_vpc_subnets}"]
  }
}
