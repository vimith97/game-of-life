pipeline {
  agent {
    label ('built-in')
  }
  stages {
    stage ('stage-1') {
      steps {
        sh "mvn clean install -DskipTests=true"
        sh "docker build -t vimith1 ."
        sh "docker run -itdp 8080:8080 --name renuka1 vimith1"
      }
    }
  }
}
