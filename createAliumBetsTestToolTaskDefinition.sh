#/bin/bash

export TEMPLATE_NAME=AliumBetsTestToolTaskDefinition.yml
export STACK_NAME=alium-bets-test-tool
#export STACK_NAME=rodoherty-alium-ecs-task-def-stack
export IMAGE=430758838994.dkr.ecr.eu-west-1.amazonaws.com/alium-ecr-repo:latest
export CONTAINER_NAME=alium-bets-test-tool-container 
export CONTAINER_SECURITY_GROUP=sg-0f8319e82c365140a

aws cloudformation deploy --template-file $TEMPLATE_NAME --stack-name $STACK_NAME --parameter-overrides Image=$IMAGE ContainerName=$CONTAINER_NAME ContainerSecurityGroup=$CONTAINER_SECURITY_GROUP --capabilities CAPABILITY_NAMED_IAM
