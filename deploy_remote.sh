#!/bin/bash
#deploy_remote.sh
ssh -o StrictHostKeyChecking=no -i /secrets/kp-Rose.pem ec2-user@ec2-52-26-143-177.us-west-2.compute.amazonaws.com 'sudo amazon-linux-extras install -y java-openjdk11'

ssh -o StrictHostKeyChecking=no -i /secrets/kp-Rose.pem ec2-user@ec2-52-26-143-177.us-west-2.compute.amazonaws.com 'sudo mkdir -p /app && sudo chmod -R 777 /app && sudo chown ec2-user /app'
scp -o StrictHostKeyChecking=no -i /secrets/kp-Rose.pem helloWorld.class ec2-user@ec2-54-212-187-128.us-west-2.compute.amazonaws.com:/home/ec2-user/helloWorld.class
ssh -o StrictHostKeyChecking=no -i /secrets/kp-Rose.pem ec2-user@ec2-52-26-143-177.us-west-2.compute.amazonaws.com 'sudo cp /home/ec2-user/helloWorld.class /app'
ssh -o StrictHostKeyChecking=no -i /secrets/kp-Rose.pem ec2-user@ec2-52-26-143-177.us-west-2.compute.amazonaws.com 'sudo cd /app && sudo java helloWorld'
