FROM tomcat:latest
#ENV DB_HOST localhost
#ENV DB_USER postgres
#ENV DB_PASSWORD password
COPY ./target/*.war /usr/local/tomcat/webapps
EXPOSE 8080
EXPOSE 8081
#CMD ["/etc/init.d/postgresql","start"]
CMD ["/usr/local/tomcat/bin/catalina.sh","run"]
