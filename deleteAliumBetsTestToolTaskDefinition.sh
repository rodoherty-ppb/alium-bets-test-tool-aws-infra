#/bin/bash

export STACK_NAME=alium-bets-test-tool
#export STACK_NAME=rodoherty-alium-ecs-task-def-stack

aws cloudformation delete-stack --stack-name $STACK_NAME
