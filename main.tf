node {
    def mvnHome
    stage('clone') { 
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
