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
                sh "/usr/local/bin/docker-compose -f docker-compose.yml up -d --build"
            }
        }
    }

}
