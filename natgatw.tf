resource "aws_nat_gateway" "natgw" {
    allocation_id = aws_eip.eip.id
    subnet_id = aws_subnet.public[0].id
    tags = {
      name ="nat gw"
    }
    depends_on = [aws_internet_gateway.gw]



}