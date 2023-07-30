FROM nginx:latest

COPY index.html /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

# Start Nginx server
CMD ["/bin/bash", "-c", "nginx -g \"daemon off;\""]
