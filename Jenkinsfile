pipeline {
    agent { dockerfile true }
        
    stages {
        
        stage("Env Build Number"){
            steps{
                echo "The build number is ${env.BUILD_NUMBER}"
            }
        }
        
        stage('Pull Code') {
            steps {
                git (
                    branch: 'main', 
                    credentialsId: '5436d64a-fd4e-49b1-8257-99a31a924b63', 
                    url: 'https://github.com/plusoneee/try-jenkins-fastapi.git'
                )
            
            }
        }
        
        stage('Build Project') {
            steps {
                echo "build project in this stage"
            }
        }
    }
}
