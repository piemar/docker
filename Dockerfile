sonar:
  image: webdizz/sonarqube:5.1.2
  ports:
    - 9000:9000
  links:
    - mysql:mysql
  environment:
    - SONAR_JDBC_URL=jdbc:mysql://mysql:3306/sonarqube?useUnicode=true&characterEncoding=utf8&rewriteBatchedStatements=true
    - SONAR_DB_USERNAME=sonarqube
    - SONAR_DB_PASSWORD=sonarqube

mysql:
  image: mysql:5.6
  hostname: mysql
  expose:
    - 3306
  environment:
    - MYSQL_ROOT_PASSWORD=mysecretpassword
    - MYSQL_USER=sonarqube
    - MYSQL_PASSWORD=sonarqube
    - MYSQL_DATABASE=sonarqube
