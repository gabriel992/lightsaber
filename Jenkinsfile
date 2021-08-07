pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                docker build -t mvn-app 
            }
        }
        // stage('Test') {
        //     steps {
        //         echo 'Testing..'
        //     }
        // }
        // stage('Deploy') {
        //     steps {
        //         echo 'Deploying....'
        //     }
        // }
    }
    
   

}  