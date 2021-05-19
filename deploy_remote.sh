#!/bin/bash
#deploy_remote.sh

MACHINE_DESTINATION=ec2-user@ec2-52-26-143-177.us-west-2.compute.amazonaws.com

ssh -o StrictHostKeyChecking=no -i /secrets/kp-Rose.pem $MACHINE_DESTINATION 'sudo amazon-linux-extras install -y java-openjdk11'

ssh -o StrictHostKeyChecking=no -i /secrets/kp-Rose.pem $MACHINE_DESTINATION 'sudo mkdir -p /app && sudo chmod -R 777 /app && sudo chown ec2-user /app'
scp -o StrictHostKeyChecking=no -i /secrets/kp-Rose.pem helloWorld.class $MACHINE_DESTINATION:/home/ec2-user/helloWorld.class
ssh -o StrictHostKeyChecking=no -i /secrets/kp-Rose.pem $MACHINE_DESTINATION 'sudo cp /home/ec2-user/helloWorld.class /app'
ssh -o StrictHostKeyChecking=no -i /secrets/kp-Rose.pem $MACHINE_DESTINATION 'sudo cd /app && sudo java helloWorld'
