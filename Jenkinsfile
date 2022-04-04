pipeline {
    agent any

    stages {
        stage('Validate') {
            steps {
                sh 'mvn validate'
		Sh 'mvn compile'
            }
        }
        stage('Unit Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn package'
            }
        }
    }
}
