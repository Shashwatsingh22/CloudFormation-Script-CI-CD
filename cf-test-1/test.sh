aws --endpoint-url=http://13.233.103.240:4566 cloudformation deploy --template-file ./cf-temp/cloudFormationTemp.yaml --stack-name test5  2> ./report/error.log  1> ./report/succ.log
