aws --endpoint-url=http://172.31.37.88:31566 cloudformation deploy --template-file ./cf-temp/cloudFormationTemp.yaml --stack-name test5  2> ./report/error.log  1> ./report/succ.log
