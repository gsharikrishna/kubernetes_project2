FROM nginx:latest

COPY todo.html /usr/share/nginx/html/

EXPOSE 80
# Verify file permissions
RUN chmod 644 /usr/share/nginx/html/todo.html 
     

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]