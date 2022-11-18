resource "null_resource" "build_layer" {
  provisioner "local-exec" {
    command = "build.sh"
    interpreter = ["bash"]
    working_dir = path.module
  }
}

resource "aws_lambda_layer_version" "layer" {
  layer_name = "pyodbc-layer39"
  filename = "${path.module}/pyodbc_layer39.zip"
  depends_on = [null_resource.build_layer]
}
