#--------------------------------------------------------------
# VPC Endpoint(s)
#--------------------------------------------------------------

resource "aws_vpc_endpoint" "endpoint" {
  count        = "${length(split(",", var.service_name))}"
  vpc_id       = "${var.vpc_id}"
  service_name = "${element(split(",", var.service_name), count.index)}"

  auto_accept         = true
  vpc_endpoint_type   = "${var.vpc_endpoint_type}"
}
