aws --endpoint-url=http://localhost:4566 cloudformation deploy --template-file ./CloudFormation-Script-CI-CD/cf-temp/cloudFormationTemp.yaml --stack-name test1  2> ./report/error.log  1> ./report/suc.log
