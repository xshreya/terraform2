
# count without variable
resource "aws_s3_bucket" "count111" {
  count = 4
  bucket = "s3-bucket-shreyaa-${count.index}"
}



#count with variable
resource "aws_s3_bucket" "count2222" {
  count = length(var.count2-var)
  bucket = var.count2-var[count.index]
}


# for each loop without variable
resource "aws_s3_bucket" "for-each1" {
  for_each = {
    "suraj15235" = "ap-south-1" 
    "karan134532" = "ap-south-1" 
    "srishti16435" = "ap-south-1" 
  }
  bucket = each.key
}


# for each loop with variable 
resource "aws_s3_bucket" "for-each2" {
  for_each = var.for-each2
  bucket = each.key
}