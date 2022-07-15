aws --endpoint-url=http://13.233.103.240:4566 cloudformation describe-stacks --stack-name test5  &> ./report/output.log

aws --endpoint-url=http://13.233.103.240:4566 cloudformation delete-stack --stack-name test5
