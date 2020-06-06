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
                sh "docker-compose -f  docker-compose.yml up "
            }
        }
    }

}
