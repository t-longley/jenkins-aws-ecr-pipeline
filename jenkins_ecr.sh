#!/bin/bash
ecs-cli configure --cluster ec2-tutorial --default-launch-type EC2 \
--config-name ec2-tutorial --region us-east-1

ecs-cli configure progile --access-key $AWS_ACCESS_KEY_ID \
