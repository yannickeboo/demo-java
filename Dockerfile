FROM anapsix/alpine-java 

# Maintainer 
EXPOSE 8080

COPY target/*.jar /maven/
CMD ["java", "-jar","/maven/*.jar"]
