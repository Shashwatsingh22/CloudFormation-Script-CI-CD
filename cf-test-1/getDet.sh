aws --endpoint-url=http://localhost:4566 cloudformation describe-stacks --stack-name test3  &> ./CloudFormation-Script-CI-CD/report/output.log

aws --endpoint-url=http://localhost:4566 cloudformation delete-stack --stack-name test3
