FROM sahadip28/ubuntu-tomcat9-postgresql12
COPY ./target/*.war /usr/local/tomcat/webapps
EXPOSE 8080
EXPOSE 8081
CMD ["/etc/init.d/postgresql","start"]
CMD ["/usr/local/tomcat/bin/catalina.sh","run"]
