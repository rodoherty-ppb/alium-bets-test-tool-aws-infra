# Alium Bets Test Tool AWS Resources

The CloudFormation template in this repo describes the AWS architecture of the Alium Bets Test Tool.

The template includes resources such as LoadBalancer, ECS Service, ECS Task Definition and IAM Roles.

## How to deploy changes to AWS
Changes are deployed by making a source change in this repo and committing to master.
A pipeline will pick up the changes and redeploy the cloudformation stack.

## TODO
  * Remove some hard-coded names and, instead, use `!Sub ${AWS::StackName}-<resource_name>`.
  * Trigger this pipeline when there is an update to the latest ECR.
  * Create an ECR for each application and then remove the `alium-ecr-repo`.

