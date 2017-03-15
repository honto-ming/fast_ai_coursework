#!/bin/bash
aws ec2 disassociate-address --association-id eipassoc-c13f75bb
aws ec2 release-address --allocation-id eipalloc-c4c9d7a3
aws ec2 terminate-instances --instance-ids i-0a0eb3c8f8af03637
aws ec2 wait instance-terminated --instance-ids i-0a0eb3c8f8af03637
aws ec2 delete-security-group --group-id sg-950e2bed
aws ec2 disassociate-route-table --association-id rtbassoc-68e6cf0e
aws ec2 delete-route-table --route-table-id rtb-b4899dd3
aws ec2 detach-internet-gateway --internet-gateway-id igw-cdb88ba9 --vpc-id vpc-67631600
aws ec2 delete-internet-gateway --internet-gateway-id igw-cdb88ba9
aws ec2 delete-subnet --subnet-id subnet-9374d3da
aws ec2 delete-vpc --vpc-id vpc-67631600
echo If you want to delete the key-pair, please do it manually.
