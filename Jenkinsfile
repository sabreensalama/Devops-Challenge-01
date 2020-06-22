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
            }
        }

         stage ("wait to run from dev env")
            {
            steps {
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
