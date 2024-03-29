
pipeline {
    agent any

    stages {
        stage('removing old  nginx') {
            steps {
                sh "sudo apt remove nginx -y "
                echo 'ngnix removed '
            }
        }
        stage('install nginx') {
            steps {
                sh "sudo apt install nginx -y "
                echo 'ngnix installed '
            }
        }
    

        stage('service start') {
            steps {
                sh "sudo systemctl start nginx "
                echo 'service started '
            }
        }

        stage('chECK version') {
            steps {
                sh "nginx -v "
                
            }
        }

    }
}
