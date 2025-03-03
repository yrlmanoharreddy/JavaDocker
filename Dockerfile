#Pull a base image which gives all required tools and libraries
FROM openjdk:25-jdk

WORKDIR /app

COPY . .

# Compile the java code
RUN javac src/Main.java

WORKDIR /app/out/production/JavaDocker/
# run the application
CMD ["java","Main"]




