# 🚀 Steps to Build and Run
## 1. Build the Java JAR
#### Navigate to the demo3 directory and run:
```
  cd demo3
  mvn clean install
``` 
This creates the JAR file at: demo3/target/demo-0.0.1-SNAPSHOT.jar

## 2. Build the Base Docker Image (Java + App)
#### From the project root:
```
  cd main-docker
  docker build -t mywebapp .
  docker run -d --name "webapp" -p 9090:8080 mywebapp
  cd ..
```
This creates a Docker image named mywebapp and you can access you java application using locahost:9090.

## 3. Build the Final Docker Image (Nginx + App)
```
  docker build -t fullstack-app .
``` 
This uses the base image (mywebapp) and adds Nginx and static content and also the html file that you added it will be listining in the port 8100 mentioned in the config file.

## 4. Run the Docker Image
```
  docker run -d -p 8100:8100 fullstack-app
```
## 5. Use ngrok for accessing the application for different dns
```
  brew inatall ngrok
  ngrok http 8100
```
this will give a public url to access the html page
