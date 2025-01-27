FROM ubuntu:latest

# Create the directory explicitly
RUN mkdir -p /docker-entrypoint-initdb.d

# Copy the file into the directory
COPY fibo.sh /docker-entrypoint-initdb.d/

# Add executable permissions
RUN chmod +x /docker-entrypoint-initdb.d/fibo.sh

# Set the script as the default entrypoint
ENTRYPOINT ["/docker-entrypoint-initdb.d/fibo.sh"]

