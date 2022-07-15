aws --endpoint-url=http://172.31.37.88:31566  cloudformation describe-stacks --stack-name test5  &> ./report/output.log

aws --endpoint-url=http://172.31.37.88:31566 cloudformation delete-stack --stack-name test5
