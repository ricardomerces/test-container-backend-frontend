# Use an official Nginx runtime as a parent image
FROM nginx:alpine

# Copy the static content to the Nginx html directory
COPY index.html /etc/nginx/html/

# Configure Nginx to listen on the port specified by the PORT environment variable (defaults to 8080)
RUN echo "server { listen 8080; }" > /etc/nginx/conf.d/default.conf

# Expose port 8080
EXPOSE 8080

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
