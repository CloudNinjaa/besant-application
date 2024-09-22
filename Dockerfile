# Start with the official Alpine Linux image
FROM alpine:latest

# Install Apache (httpd)
RUN apk update && apk add --no-cache apache2

# Create /var/www/html directory (since Alpine uses /var/www/localhost/htdocs by default)
RUN mkdir -p /var/www/html

# Remove default files in the default Alpine web directory
RUN rm -rf /var/www/localhost/htdocs/*

# Set /var/www/html as the working directory
WORKDIR /var/www/localhost/htdocs/

# Copying all the file from host to container machine
COPY . .

# Expose the default port for httpd (Apache)
EXPOSE 80

# Start the httpd server in the foreground
CMD ["httpd", "-D", "FOREGROUND"]
