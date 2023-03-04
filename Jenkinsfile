pipeline {
    agent any
        
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
                    credentialsId: 'plusoneee-github-auth-password', 
                    url: 'https://github.com/plusoneee/try-jenkins-fastapi.git'
                )
            
            }
        }

        stage('Build Project') {
            steps {
                echo "build project in this stage"
                sh 'docker build -t my-api:v1 .'
                sh 'docker run -itd my-api:v1 bash'
            }
        }
    }
}