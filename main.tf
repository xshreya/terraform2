
# count without variable
resource "aws_s3_bucket" "count111" {
  count = 4
  bucket = "s3-bucket-shreyaa-${count.index}"
  tags = {
    Name = "Shreya"
    Environment = "Development"
  }
}



#count with variable
resource "aws_s3_bucket" "count2222" {
  count = length(var.count2-var)
  bucket = var.count2-var[count.index]
  tags = {
    Name = "Shreya"
    Environment = "Development"
  }
}


# for each loop without variable
resource "aws_s3_bucket" "for-each1" {
  for_each = {
    "suraj15235" = "ap-south-1" 
    "karan134532" = "ap-south-1" 
    "srishti16435" = "ap-south-1" 
  }
  bucket = each.key
  tags = {
    Name = each.value
    Environment = "Development"
  }
}


# for each loop with variable 
resource "aws_s3_bucket" "for-each2" {
  for_each = var.for-each2
  bucket = each.key
  tags = {
    Name = each.value
    Environment = "Development"
  }
}


# Count using for expression
resource "aws_s3_bucket" "count111" {
  for_each = { for idx in range(3): idx => "s3-bucket-shreyaa-${idx}" }
  bucket   = each.value
  tags = {
    Name = each.value
    Environment = "Development"
  }
}