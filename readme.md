# 🚀 Steps to Build and Run
## 1. Build the Java JAR
#### Navigate to the demo3 directory and run:
```
- cd demo3
- mvn clean install
``` 
This creates the JAR file at: demo3/target/demo-0.0.1-SNAPSHOT.jar

## 2. Build the Base Docker Image (Java + App)
#### From the project root:
```
- cd main-docker
- docker build -t mywebapp .
- cd ..
```
This creates a Docker image named mywebapp.

## 3. Build the Final Docker Image (Nginx + App)
```
- docker build -t fullstack-app .
``` 
This uses the base image (mywebapp) and adds Nginx and static content.

## 4. Run the Application
```
- docker run -p 8100:8100 fullstack-app
```
## 5. Use ngrok for accessing the application for different dns
```
- brew inatall ngrok
- ngrok http 8100
```
