resource "aws_route_table" "rtbl" {
    vpc_id = aws_vpc.mainvpc.id
    route  {
        cidr_block="0.0.0.0/0"
        gateway_id=aws_internet_gateway.gw.id
    }
  
  tags = {
    Name="rtbl"
  }
}
resource "aws_route_table_association" "name" {
    subnet_id = aws_subnet.public[count.index].id 
    route_table_id = aws_route_table.rtbl.id
    count = 2

  
}
resource "aws_default_route_table" "rtd" {
  default_route_table_id = aws_vpc.mainvpc.default_route_table_id

    route {
        cidr_block="0.0.0.0/0"
        gateway_id=aws_nat_gateway.natgw.id
    }
    tags = {
      name="si"
    }
  
}