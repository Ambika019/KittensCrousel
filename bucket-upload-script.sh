#!/bin/bash

#to upload files in s3 bocket via cli
#first configure cli with "aws configure" connect by giving your access key and sectret key
#use these commands
aws s3 cp static-web/cat0.jpg s3://kittens.awsdevopsambika.com  # change name s3 as needed
aws s3 cp static-web/cat1.jpg s3://kittens.awsdevopsambika.com
aws s3 cp static-web/cat2.jpg s3://kittens.awsdevopsambika.com
aws s3 cp static-web/index.html s3://kittens.awsdevopsambika.com

# to empty bucket from cli
aws s3 rm s3://kittens.awsdevopsambika.com/cat0.jpg
aws s3 rm s3://kittens.awsdevopsambika.com/cat1.jpg
aws s3 rm s3://kittens.awsdevopsambika.com/cat2.jpg
aws s3 rm s3://kittens.awsdevopsambika.com/index.html

# to copy or remove whole folder from sourse to destination
aws s3 cp static-web/ s3://kittens.awsdevopsambika.com --recursive
aws s3 rm s3://kittens.awsdevopsambika.com --recursive