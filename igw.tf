resource "aws_internet_gateway" "gw" {
    vpc_id = aws_vpc.mainvpc.id
    tags = {
      name= "igw"
    }
  
}