# Terraform
Create EC2
Create EC2 using terraform template or cloud formation template
Setup  AWS
aws configure 
provide access key
              secret keey
Creation of S3 bucket
aws testdipstest create-bucket --bucket my-bucket --region us-east-2
Import Bucket policy
Import bucket policy for the created bucket. Follow s3log
Created policy to be added to EC2 instance. Actions->attach policy.
1.	In Log Groups screen, select the button next to a log group and then choose Actions and then Export data to Amazon S3.
2.	On the Export data to Amazon S3 screen, under Define data to export, set the time range for the data to export using From and To.
3.	If your log group has multiple log streams, you can provide a log stream prefix to limit the log group data to a specific stream. Choose Advanced, and then for Stream prefix, enter the log stream prefix.
4.	Under Choose S3 bucket, choose the account associated with the Amazon S3 bucket.
5.	For S3 bucket name, choose an Amazon S3 bucket.
6.	Choose Advanced, and then for S3 Bucket prefix, enter the randomly generated string that you specified in the bucket policy.
7.	Choose Export data to export your log data to Amazon S3.
8.	To view the status of the log data that you exported to Amazon S3, choose Actions and then View all exports to Amazon S3.
