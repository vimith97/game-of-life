FROM tomcat
MAINTAINER Renuka
EXPOSE 8080
COPY gameoflife.war /usr/local/tomcat/webapps/
ENTRYPOINT /usr/local/tomcat/bin ./start.sh
