FROM tomcat
MAINTAINER Renuka
COPY gameoflife.war /usr/local/tomcat/webapps/
ENTRYPOINT /usr/local/tomcat/bin ./start.sh
