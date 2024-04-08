FROM nginx:latest

COPY index.html /usr/share/nginx/html/


EXPOSE 80

# Verify file permissions
RUN chmod 644 /usr/share/nginx/html/index.html 
     

# Start Nginx when the container 
CMD ["nginx", "-g", "daemon off;"]
