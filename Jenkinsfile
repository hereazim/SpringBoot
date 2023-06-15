pipeline{
    agent any
    tools{
        maven "MAVEN_HOME"
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/hereazim/SpringBoot.git']])
                bat 'mvn clean install package'
            }
        }
        stage('Build Docker'){
            steps{
                script{
                    bat 'docker build -t kaazim/springbootapp .'
                    
                }
            }
        }
        stage('Push Docker'){
            steps{
                script{
                    bat 'docker login -u kaazim -p Azimka@01#'
                    bat 'docker push kaazim/springbootapp'
                }
            }
        }
        stage('Deploy Container to Kubernetes') {
      steps {
        script {
         kubernetesDeploy configs: 'deployment.yaml','service.yaml', kubeconfigId: 'kubernetes'
      }
    }
        
    }
}
