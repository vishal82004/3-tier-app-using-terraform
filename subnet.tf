    resource "aws_subnet" "public" {
        vpc_id=aws_vpc.mainvpc.id 
        cidr_block=var.cidr[count.index]
        availability_zone = var.az[count.index]
        count=2 
        tags = {
            name = "public-subnet"
        }
    }
    
    resource "aws_subnet" "private" {
        vpc_id = aws_vpc.mainvpc.id
        # Add other required attributes such as cidr_block, availability_zone, etc.
        cidr_block = "10.0.3.0/24"
        availability_zone = "us-east-1b"
        tags = {
        name="privatesub"
        }
    }
    data "aws_subnets" "sid" {
        filter {
        name = "vpc-id"
        values = [ aws_vpc.mainvpc.id ]

        }
        tags = {
        Tier="Public"
        }
        
    }