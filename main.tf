node {
    def mvnHome
    stage('clone') { 
    git branch: 'main', url: 'https://github.com/rajrangineni/dev.git'
        dir('resource.tf'){
           }
    }
    stage('init') {
dir('resource.tf'){
        sh 'terraform init'
            }
    }
    stage('plan') {
       dir('resource.tf'){
       sh 'terraform plan'
            }
    }
     stage('apply') {
         dir('resource.tf'){
       sh 'terraform apply -auto-approve'
            }
       
    }
}
