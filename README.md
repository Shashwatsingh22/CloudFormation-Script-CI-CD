# CloudFormation-Testing-Env


*This Repo is Created as Testing Env for CloudFormation Templates.* 
You can say I completely automated the testing part of CloudFomation Script!
```
Hpw we cam use this ?

>> There is an cf-test branch where we have required scripts as well as the JenkinsFile.

>> CloudFormation template for testing it will be first push in the cf-test branch during this you also make sure that in the cf-test-1/* there is some script in which you need to mention the unique stackName (From the Main branch after every testing there is file which updated everytime which have inforamtion about the stacknames which is used).

>> In the same branch we have an JSON file which is data.json where cloud engineer need to mention there email so that we can able to give the update on there testing of cf-template.
```

## Configuration of The Setup
```
* Firstly you need to setup the tool through which you would like to validate cf-template (In this scenrio I prefred to use LocalStack).
* Configure the Jenkins.
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
