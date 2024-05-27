node {
    def mvnHome
    stage('clone') { 
        git branch: 'main', url: 'https://github.com/rajrangineni/nikki.git'
        dir('day01_terraform'){
           }
    }
    stage('init') {
dir('day01_terraform'){
        sh 'terraform init'
            }
    }
    stage('plan') {
       dir('day01_terraform'){
       sh 'terraform plan'
            }
    }
     stage('apply') {
         dir('day01_terraform'){
       sh 'terraform apply -auto-approve'
            }
       
    }
}
