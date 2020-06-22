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
            when {
                branch 'dev' 
            }
            steps {
                sh "docker-compose up "
                sh 'sleep 300'
            }
        }

    
          stage('Deploy for production') {
            when {
                branch 'prod'  
            }
            steps {
                sh 'sed -e "s/dev /production" .env'

                sh "docker-compose up "
            }
        }
    }

}
