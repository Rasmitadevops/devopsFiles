FROM  tomcat
LABEL  APP=UI
RUN   apt-get update -y
WORKDIR  /usr/local/tomcat/webapps/
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["CATALINA.SH","RUN"]

