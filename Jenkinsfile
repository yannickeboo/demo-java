  pipeline {

 
  agent any
   
    environment{
        VERSION = "${env.BUILD_ID}"
        IMAGE_NAME = "yannickeboo/anael"
    }
    stages {
          
        stage('Build') { 
            
            steps {
                
                sh 'mvn clean package' 
            }
            
        }
     stage('docker image') {
      
      
      steps {
       
       
       withDockerRegistry([ credentialsId: "Docker_hub", url: "https://index.docker.io/v1/" ]) {
       
       sh 'pwd && ls'
       sh  'docker build  -t $IMAGE_NAME:app1-$VERSION .'
       sh 'docker tag $IMAGE_NAME:app1-$VERSION $IMAGE_NAME:$VERSION'
       sh 'docker push $IMAGE_NAME:app1-$VERSION'
       sh 'docker push $IMAGE_NAME:$VERSION'
        
       
       }
       
        
     
         
      }
     }
    }
}
