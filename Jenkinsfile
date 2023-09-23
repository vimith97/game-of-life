pipeline {
  agent {
    label ('built-in')
  }
  stages {
    stage ('stage-1') {
      steps {
        sh "mvn clean install -DskipTests=true"
        sh "docker system prune -a -f"
      }
    }
    stage ('stage-2) {
      steps {
        sh "docker build -t vimith2 ."
        sh "docker run -itdp 8083:8080 --name cont1 vimith2"
        sh "docker exec cont1 chmod -R 777 /usr/local/tomcat/webapps/"
      }
    }
  }
}
