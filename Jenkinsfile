pipeline {
  agent {
    label ('built-in')
  }
  stages {
    stage ('stage-1') {
      steps {
        sh "mvn clean install -DskipTests=true"
        sh "docker system prune -a -f"
        sh "docker build -t vimith2 ."
        sh "docker run -itdp 8081:8080 --name renuka2 vimith2"
      }
    }
  }
}
