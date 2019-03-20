#--------------------------------------------------------------
# VPC Endpoint(s)
#--------------------------------------------------------------

resource "aws_vpc_endpoint" "endpoint" {
  
  vpc_id       = "${var.vpc_id}"
  service_name = "${var.service_name}"

}
