# Use the official OpenJDK image as the base image
FROM openjdk:11

# Set environment variables for Spark
ENV SPARK_VERSION=3.4.1
ENV HADOOP_VERSION=3
ENV SPARK_HOME=/opt/spark
ENV PATH="$SPARK_HOME/bin:$PATH"

# Install Python and necessary tools
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip && \
    apt-get clean

# Download and install Spark
RUN curl -L -o /tmp/spark.tgz \
    "https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz" && \
    mkdir -p /opt && \
    tar -xzf /tmp/spark.tgz -C /opt && \
    mv /opt/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} $SPARK_HOME && \
    rm /tmp/spark.tgz

# Install PySpark
RUN pip3 install pyspark

# Set the working directory
WORKDIR /app

# Copy your application code
COPY . /app

# Command to keep the container running
CMD ["tail", "-f", "/dev/null"]
