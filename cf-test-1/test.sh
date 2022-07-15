aws --endpoint-url=$(END-POINT) cloudformation deploy --template-file ./cf-temp/cloudFormationTemp.yaml --stack-name test4  2> ./report/error.log  1> ./report/succ.log
