# Download the ghost image
module "image" {
  source = "/root/docker/image"
  image  = "${var.image}"
}


# Start the Container
module "container" {
  source   = "/root/docker/container"
#  image    = "${module.image.image_out}"
  image = "${var.image}"
  name     = "${var.container_name}"
  int_port = "${var.int_port}"
  ext_port = "${var.ext_port}"
}
