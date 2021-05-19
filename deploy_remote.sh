#!/bin/bash
#deploy_remote.sh
java -version
if [[ $? != 0 ]] 
then 
  sudo amazon-linux-extras install -y java-openjdk11 
fi

scp -i /secrets/kp-Rose.pem helloWorld.class ec2-user@ec2-54-212-187-128.us-west-2.compute.amazonaws.com/app
ssh -i /secrets/kp-Rose.pem ec2-user@ec2-52-26-143-177.us-west-2.compute.amazonaws.com 'cd /app && java helloWorld'
