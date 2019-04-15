pipeline {
    agent any
    environment {
    	ANSIBLE_ROLES_PATH="ansible/roles/"
      	ANSIBLE_HOST_KEY_CHECKING="False"
        ANSIBLE_BECOME=true
        ANSIBLE_BECOME_METHOD="sudo"
    }
    stages {
        stage('Build Image') {
            steps {
                sh 'docker build -t sdemircan/spring-boot-hello-world .'
            }
        }
        stage('Push Image') {
            steps {
                withDockerRegistry([ credentialsId: "docker-hub", url: "" ]) {
                    sh 'docker push sdemircan/spring-boot-hello-world:latest'
                }
            }
        }
        stage('Push Image') {
            steps {
                withCredentials(bindings: [sshUserPrivateKey(credentialsId: 'remote-jenkins-user', \
                      keyFileVariable: 'SSH_KEY_FOR_USER', usernameVariable:'SSH_USER')]) {
                    sh """ansible-playbook  -i ansible/inventory/hosts \
                                        -e ansible_private_key_file=$SSH_KEY_FOR_USER \
					-e ansible_user=$SSH_USER \
					ansible/deploy.yml """

                }
            }
        }
    }
}

