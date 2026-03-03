FROM ubuntu:latest

# Avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install apache2
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Expose port 80
EXPOSE 80

# Start Apache in foreground
CMD ["apachectl", "-D", "FOREGROUND"]
