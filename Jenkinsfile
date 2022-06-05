IS_ERROR=0
GIT_BRANCH=''

pipeline {
    agent any

    stages {
        
        stage('cloning the repo') {
            steps {
                sh 'git name-rev --name-only HEAD > GIT_BRANCH'
                sh 'cat GIT_BRANCH'
                //GIT_BRANCH = readFile('GIT_BRANCH').trim()
                
                shell("echo 'clone the repo'")
                sh 'echo Branch Name: $BRANCH_NAME'
            }
        }
        
        stage('start testing')
        {
          steps{
              catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                  script{
                      IS_ERROR =  sh(
                      script: "./cf-test/test.sh",
                      returnStdout: true
                      ) == 0  
                  }
                }
          }
        }
        
        stage('send error mail')
        {
            when {
             expression { IS_ERROR == 0}
            }
            steps
            {
                sh "sudo python3 /home/ubuntu/sendMail.py error-found"
            }
        }
        
        stage('send test pass mail')
        {
            when {
             expression { IS_ERROR == false }
            }
            steps
            {
                sh ("sudo python3 /home/ubuntu/sendMail.py error-found")
            }
        }
        
        stage('push to master')
        {
            when {
             expression { IS_ERROR == false }
            }
            steps
            {
                shell("push to master")
            }
        }
    }
}
