#!/bin/bash

aws cloudformation create-stack --stack-name stack \
--template-body file://cloudfront-s3.yml --region us-east-1 \
--parameters ParameterKey=DomainName,ParameterValue=nikol-test-bucket-1345451 \
             ParameterKey=WebSiteDomain,ParameterValue=websitetest-bucket.zapto.org 

aws cloudformation wait stack-create-complete --stack-name stack --region us-east-1 

#aws s3 cp ./www/ s3://nikol-test-bucket-1345451 --recursive
