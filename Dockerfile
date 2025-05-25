# Use the latest Ubuntu image
FROM ubuntu:latest

# Update and install nginx with auto-confirmation
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy your HTML file to the default web root
COPY sahil.html /var/www/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
