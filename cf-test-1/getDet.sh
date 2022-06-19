aws --endpoint-url=http://localhost:4566 cloudformation describe-stacks --stack-name test110  &> /var/lib/jenkins/workspace/cf-check-test/cf-test/output/output.log

aws --endpoint-url=http://localhost:4566 cloudformation delete-stack --stack-name test110