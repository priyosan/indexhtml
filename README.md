# indexhtml

## Challenge 1
# error log script 500 error

cat error.log.1 | grep " 500 " | awk -F'"' '{print $2,",",$4,",",$6}' > /home/ubuntu/500.log

# or

var1=`awk '$9 == "500"' access_log | tail -1`



## Challenge 2
# html-image-docker-compose

## This is just a sample project to run docker-compose with a simple html file.

Here are three files
- Dockerfile
- Docker-compose.yaml
- index.html

## For docker build

`docker build -t htmltest .`

`docker run -p 8080:80 -v ${PWD}:/usr/share/nginx/html htmltest`

## For running Docker-compose

`docker-compose up -d`

`docker-compose ps`

`docker-compose logs`

You can change index.html for showing different message.

You can run this 


> **Note** if you having any issues running docker then run run with sudo as super user priviledges 
