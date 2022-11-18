resource "null_resource" "build_layer" {
  count = var.create ? 1 : 0
  provisioner "local-exec" {
    command = "build.sh"
    interpreter = ["bash"]
    working_dir = path.module
  }
}

resource "aws_lambda_layer_version" "layer" {
  count = var.create ? 1 : 0
  layer_name = var.layer_name
  filename = "${path.module}/pyodbc_layer39.zip"
  depends_on = [null_resource.build_layer]
}
