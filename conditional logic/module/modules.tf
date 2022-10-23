resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"

    tag = {
        Name = "Conditional Logic Tuts"
    }
}



resource "aws_subnet" "public" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.1.0/24"

    map_public_ip_on_launch = true

    tags = {
        Name = "Public Subnet CL"
    }

}


resource "aws_subnet" "private" {
    count = var.create_private_subnet ? 2 : 0


    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.2.0/24"

    map_public_ip_on_launch = true

    tags = {
        Name = "Private Subnet CL"
    }

}