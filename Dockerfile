FROM bitnami/spark:3.4.1

# Switch to root user for setup
USER root

# Install PySpark dependencies
RUN pip install py4j pyspark

# Create a named non-root user for UID 1001
RUN echo "spark:x:1001:1001::/home/spark:/bin/bash" >> /etc/passwd

# Switch back to the non-root user
USER 1001

# Set the working directory
WORKDIR /app

# Copy your application code
COPY . /app

# Command to keep the container running
CMD ["tail", "-f", "/dev/null"]
