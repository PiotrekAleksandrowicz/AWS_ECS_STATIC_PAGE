# Use the official Ubuntu
FROM ubuntu:latest

# Install the Apache HTTP server package from the CentOS repository
RUN apt-get update && apt-get install -y apache2


# Copy the index.html file from the Docker build context to the default Apache document root directory in the container
COPY 2135_mini_finance/ /var/www/html/

# Specify the command to run when the container starts, which starts the Apache HTTP server in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]

# Expose port 80 to allow incoming HTTP traffic to the container
EXPOSE 80
