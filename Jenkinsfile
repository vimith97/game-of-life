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
        sh "docker run -itdp 8083:8080 --name renuka2 vimith2 bash"
        sh "docker exec renuka2 chmod -R 777 /usr/local/tomcat/webapps/"
      }
    }
  }
}
