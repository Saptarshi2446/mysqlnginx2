
 FROM nginx
 
 RUN apt-get update && apt-get upgrade -y
 
 COPY index.html /usr/share/nginx/html
 
 EXPOSE 8080
 
 CMD ["nginx", "-g", "daemon off;"]

#Create MySQL Image for JSP Tutorial Application
FROM mysql
MAINTAINER csgeek@mail.com

ENV MYSQL_ROOT_PASSWORD jsppassword
ADD jsp_backup.sql /docker-entrypoint-initdb.d

EXPOSE 3306
