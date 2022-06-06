aws --endpoint-url=http://localhost:4566 cloudformation describe-stacks --stack-name sttest1  &> /var/lib/jenkins/workspace/cf-check-teat/cf-test/output/output.log

aws --endpoint-url=http://localhost:4566 cloudformation delete-stack --stack-name sttest1