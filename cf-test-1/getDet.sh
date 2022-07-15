aws --endpoint-url=$(END-POINT) cloudformation describe-stacks --stack-name test4  &> ./report/output.log

aws --endpoint-url=$(END-POINT) cloudformation delete-stack --stack-name test4
