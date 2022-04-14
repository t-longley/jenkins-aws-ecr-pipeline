pipeline {
    environment {
        registry = '183170358057.dkr.ecr.us-east-1.amazonaws.com/jenkins-cicd'
        registryCredential = "IAM_SAA"
        dockerImage = "aws-ecr"
    }
    agent any
    stages {
        stage('Build Docker Image') {
            steps{
                script{
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage('Push image to ECR') {
            steps{
                script{
                    docker.withRegistry("https://" + registry, "ecr:us-east-1:" + registryCredential) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}