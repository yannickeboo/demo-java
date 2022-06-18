 pipeline {
 
 
  agent any
   
    environment{
        VERSION = "${env.BUILD_ID}"
        IMAGE_NAME = "yannickeboo/anael"
    }
    stages {
          
        stage('Build') { 
            agent { 
              docker { image 'docker.io/library/maven:3-openjdk-18-slim' }
          }
            steps {
                sh 'mvn clean package' 
            }
        }
     stage('Test') { 
            agent { 
              docker { image 'docker.io/library/maven:3-openjdk-18-slim' }
          }
            steps {
                sh '/kaniko/executor --dockerfile Dockerfile . --insecure --skip-tls-verify --cache=true --destination= yannickeboo:${env.BUILD_ID}' 
            }
        }
    }  
     
    
     }
    


