FROM anapsix/alpine-java 

# Maintainer 
EXPOSE 8080
WORKDIR webapps 
COPY target/*.jar .
CMD ["java", "-jar","*.jar"]
