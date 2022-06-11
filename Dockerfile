FROM anapsix/alpine-java 

# Maintainer 
EXPOSE 8080

COPY target/* /maven/
CMD ["java", "-jar","/maven/*.jar"]
