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
python3 /app/hello_world.py\
```

## Inspect Logs:

List the logs in the spark-logs volume:
```bash
sudo docker volume inspect pyspark-docker_spark-logs
```