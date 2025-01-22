# Steps to Run

## Build and Start the Cluster:

```bash
sudo docker compose build
sudo docker compose up -d
```

## Verify the Setup:

Check the running containers:
```bash
sudo docker ps
```
Access the Spark Master Web UI at http://localhost:8080.
Confirm both workers are registered under "Workers".

## Run a PySpark Job:

Access the Spark master container:
```bash
sudo docker exec -it spark-master bash
```
```bash
python3 /app/hello_world.py
```

## Inspect Logs:

List the logs in the spark-logs volume:
```bash
sudo docker volume inspect pyspark-docker_spark-logs
```

## Outcome
Functional multi-node Spark cluster with:
- 1 master node.
- 2 worker nodes.
- Persistent logs and tunable Spark configurations.

# About Spark Configuration

## 1. Memory Allocation
- spark.executor.memory: 2g
    - Memory allocated to each Spark executor for task processing.
- spark.driver.memory: 512m
    - Memory allocated to the Spark driver, which coordinates jobs.

## 2. CPU Allocation
- spark.executor.cores: 1
    - Number of CPU cores used by each executor.

## 3. Parallelism
- spark.sql.shuffle.partitions: 4
    - Number of partitions used during shuffle operations (e.g., joins or aggregations).

## 4. Logging
- spark.eventLog.enabled: true
    - Enables logging of Spark events for monitoring and debugging.
- spark.eventLog.dir: /opt/spark/logs
    - Directory where event logs are stored.
- spark.history.fs.logDirectory: /opt/spark/logs
    - Directory for accessing historical logs in the Spark History Server.
- spark.executor.logs.rolling.enabled: true
    - Enables log rotation to prevent excessive log size.
- spark.executor.logs.rolling.maxRetainedFiles: 5
    - Retains up to 5 log files per executor.
- spark.executor.logs.rolling.strategy: size
    - Rolls logs based on file size.
- spark.executor.logs.rolling.maxSize: 10m
    - Maximum size of each log file before rolling.

## 5. UI and Monitoring
- spark.ui.showConsoleProgress: true
    - Displays progress bars in the console during job execution.