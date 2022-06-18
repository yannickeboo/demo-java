FROM openjdk 

# Maintainer 
EXPOSE 8080
 
COPY target/java-maven-app-1.1.0-SNAPSHOT.jar .
CMD ["java", "-jar","*.jar"]
