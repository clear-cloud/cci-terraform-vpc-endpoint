resource "aws_vpc_endpoint_route_table_association" "endpoint" {
  count           = "${length(split(",", var.route_tables))}"
  route_table_id  = "${element(split(",", var.route_tables), count.index)}"
  vpc_endpoint_id = "${aws_vpc_endpoint.endpoint.id}"
}
