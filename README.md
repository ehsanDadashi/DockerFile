# DockerFile
# main.go:
  it is a simple web app with go lang
# dockerfile: 
  it is a non multi stage docker file to create image.
  the problem is it is 800M
# dockerfile-multiStage.txt :
  it is multi stage docker file that first build a main.go
  and then copy binary file to alpine image and create a 14M image.
# build docker file 
  first go to dockerfile directory and then run this command:
  
  docker build -t multi:3.0 .
# docker-compose.yml :
  it is a simple compose file to run the above image
