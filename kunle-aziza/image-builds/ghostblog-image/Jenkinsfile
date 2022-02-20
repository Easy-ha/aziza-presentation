peline {
  agent any

    environment {
	 AWS_ACCESS_KEY_ID     = credentials('kunle-jenkins-credentials')  // this is now global path might not be needed
    AWS_SECRET_ACCESS_KEY = credentials('kunle-jenkins-credentials')  // might be global path might not be needed
    PATH = "/usr/local/bin:~/.tfenv/bin/:$PATH"
    } 
    
    
	
	stages {
        stage('Build application') {
            steps {

 dir("./kunle-aziza/image-builds/ghostblog-image"){
                    sh "pwd"
                    sh "ls -lart"
                    sh "whoami"
                    sh "free -h"
                    sh "sudo docker build -t ghostblog:1.0 ." 
	           
	            sh "sudo docker images"
	            sh" sudo docker ps -a"
	            sh"sudo chmod 666 /var/run/docker.sock"
	            sh "aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 636122785341.dkr.ecr.eu-west-1.amazonaws.com"
	            sh "docker tag ghostblog:1.0 636122785341.dkr.ecr.eu-west-1.amazonaws.com/ghostblog:1.0"
	            sh"docker push 636122785341.dkr.ecr.eu-west-1.amazonaws.com/ghostblog:1.0"
	            
                }
                echo "Please build application"
            }
        }
    
      
    
                
	}              
                      
      post {
      always {
        deleteDir()
      }
  }              
        
    }

