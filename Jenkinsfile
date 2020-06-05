pipeline 
{

    agent any
    stages {
        stage('Testing Stage') {
            steps {
               sh "python tests/test.py"
            }
        }

        stage('Build stage Stage') {
            steps {
                sh "docker ps"
                sh "docker-compose.yml up -d --build"
            }
        }
    }

}
