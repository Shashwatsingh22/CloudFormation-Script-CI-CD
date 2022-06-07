import os
import sys
import json
import string
import random

def findTempName(fileName):
    file=open(fileName,'r')
    data=file.read();
    data=json.loads(data)
    return [data['templatename'],data['stackname']]

def runTest(stackName,tempName,errorFile):
    os.system("aws --endpoint-url=http://localhost:4566 cloudformation deploy --template-file /var/lib/jenkins/workspace/cf-check-teat/"+tempName+" --stack-name "+stackName+" &> "+errorFile)

def getDetail(stackName,outFile):
    os.system("aws --endpoint-url=http://localhost:4566 cloudformation describe-stacks --stack-name "+stackName+" &> "+outFile)

def main():
    some = findTempName('/var/lib/jenkins/workspace/cf-check-teat/data.json')
    stackName = some[1]
    tempName= some[0]
    errorFile = "/var/lib/jenkins/workspace/cf-check-teat/cf-test/error/error.log"
    outFile = "/var/lib/jenkins/workspace/cf-check-teat/cf-test/output/output.log"
    stackName = ''.join((random.choice(string.ascii_lowercase) for x in range(10)))

    if(sys.argv[1] == "run-test"):
        runTest(stackName,tempName,errorFile)
    if(sys.argv[1] == "get-detail"):
        getDetail(stackName,outFile)
        
if __name__ == "__main__":
    main()

