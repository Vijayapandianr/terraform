pipeline {
    agent {
		label 'LinuxSlave-Static'
	}

    stages {
		stage(checkout) {
			steps {
				checkout scm
			}
		}
		stage('terraform Init') {
            steps {
                script {
                    sh 'terrascan init'
					sh 'terrascan version'
					
                }
            }
        }
		
        stage('terraform scan') {
            steps {
                script {
					sh 'terrascan scan'
                }
            }
        }
    }
}