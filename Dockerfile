FROM anapsix/alpine-java 

# Maintainer 
EXPOSE 8080

COPY target/* .
CMD ["java", "-jar","*.jar"]
