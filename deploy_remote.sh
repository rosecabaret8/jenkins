#!/bin/bash
#deploy_remote.sh
java -version
if [[$? !=0 ]] then sudo amazon-linux-extras
install -y java-openjdk11 fi
scp ssh -i "kp-Rose.pem" ec2-user@ec2-54-212-187-128.us-west-2.compute.amazonaws.com/app helloWorld.class
scp -i /secrets/kp-Rose.pem helloWorld.class ec2-user@IP:/app
ssh kp-Rose.pem" ec2-user@ec2-52-26-143-177.us-west-2.compute.amazonaws.com -c'cd/app && java helloWorld
