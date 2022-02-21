pipeline {
  agent any

    environment {
	 AWS_ACCESS_KEY_ID     = credentials('kunle-jenkins-credentials')  // this is now global path might not be needed
         AWS_SECRET_ACCESS_KEY = credentials('kunle-jenkins-credentials')  // might be global path might not be needed
   dir("./kunle-aziza/image-builds/ghostblog-image"){
    } 
    
	    
    
	stages {
		stage('SCM Checkout') {
		  steps {
    
               git credentialsId: 'git-creds', url:= 'git@github.com:Easy-ha/aziza-presentation.git' ,branch: 'dev-branch'
		}
           stage('Build application') {
            steps {
                    sh "pwd"
                    sh "ls -lart"
                    sh "whoami"
                    sh "free -h"
	    stage('Build application') {
            steps {
                    sh "sudo docker build -t ghostblog:1.0 ." 
	    }
	  }
           stage('Query builds images and containers') {
            steps {
	            sh "sudo docker images"
	            sh" sudo docker ps -a"
	    }
		    }
		  stage('grant persission and set aws ecr creds') {
                     steps {
		     }
		  }
		    
	            sh"sudo chmod 666 /var/run/docker.sock"
	            sh "aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 636122785341.dkr.ecr.eu-west-1.amazonaws.com"
		    
		    stage('Tag and push to EcR') {
                     steps {
		     }
		  }
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

