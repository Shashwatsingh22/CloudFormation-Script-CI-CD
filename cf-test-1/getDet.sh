aws --endpoint-url=http://localhost:4566 cloudformation describe-stacks --stack-name testCf  &> /var/lib/jenkins/workspace/cf-test/logs/pass.log

aws --endpoint-url=http://localhost:4566 cloudformation delete-stack --stack-name testCf