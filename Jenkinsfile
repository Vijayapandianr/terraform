pipeline {
    agent any
    tools {
        terraform 'sandbox_tf'
    }

    stages {
	stage('Checkout') {
	     steps {
		checkout scm
	     }
	}
        stage('terraform vesrion') {
            steps {
                script {
                    sh 'terraform --version'
                }
            }
        }
        stage('terraform init') {
            steps {
                script {
                    sh 'tflint --version'
					sh 'tflint --format=checkstyle'
                }
            }
        }
    }
}
