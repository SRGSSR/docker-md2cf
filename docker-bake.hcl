variable "MD2CF_VERSION" {
  default = "latest"
}

target "default" {
  context = "."
  args    = {
    MD2CF_VERSION = "${MD2CF_VERSION}"
  }
  tags = [
    "rtsdevops/md2cf:${MD2CF_VERSION}",
    "rtsdevops/md2cf:latest"
  ]
}
