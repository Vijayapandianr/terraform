pipeline {
    agent any
    /*tools {
        terraform 'sandbox_tf'
    }*/

    stages {
	stage('Checkout') {
	     steps {
		checkout scm
	     }
	}
        stage('terraform vesrion') {
            steps {
                script {
                    sh 'terrascan version'
		    sh 'terrascan scan'
                }
            }
        }
       
    }
}
