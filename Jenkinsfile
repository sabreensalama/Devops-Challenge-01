pipeline 
{
    environment {
        PATH = "$PATH:/usr/local/bin"
    }
    agent any
    stages {
        stage('Testing Stage') {
            steps {
               sh "python tests/test.py"
            }
        }

        stage('Build stage Stage') {
            steps {
                sh "docker-compose up --build"
            }
        }
    }

}
