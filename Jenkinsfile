pipeline {
  agent {
    label ('built-in')
  }
  stages {
    stage ('stage-1') {
      steps {
        sh "mvn clean install -DskipTest=true"
        sh "docker build -t vimith ."
        sh "docker run -itdp 8080:8080 --name renuka vimith"
      }
    }
  }
}
