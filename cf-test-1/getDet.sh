aws --endpoint-url=http://localhost:4566 cloudformation describe-stacks --stack-name test1  &> ./CloudFormation-Script-CI-CD/report/output.log

aws --endpoint-url=http://localhost:4566 cloudformation delete-stack --stack-name test1
