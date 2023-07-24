FROM tomcat:9.0.76
MAINTAINER vimith
EXPOSE 8080
COPY gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
