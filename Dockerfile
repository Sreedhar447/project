# build maven image using docker
FROM maven:3-adoptopenjdk-8 as mvn_build
WORKDIR /home/centos/docker/cicdproject/project
COPY . .
RUN mvn clean package

# deploy war file to tomcat from mvn_build
FROM tomcat:8.0
COPY --from=mvn_build /home/centos/docker/cicdproject/project/target/*.war /usr/local/tomcat/webapps/
