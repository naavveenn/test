FROM java
COPY jar/target/KSS-Jenkins-1.0-SNAPSHOT.jar /root/KSS-Jenkins.jar
CMD ["java","-jar","root/KSS-Jenkins.jar"]
