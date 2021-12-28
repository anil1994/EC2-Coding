#!/bin/bash  
    cd /Users/anil.dalkilic/aws-cli
    ./aws ec2 describe-instances --filters Name=instance-state-name,Values=running   --query 'Reservations[*].Instances[*].[PublicIpAddress,InstanceId]' --output text | column -t > aws.csv
    mail -s "aws running ec2  public ve instance IP pairs"  recipient mail address < aws.csv
