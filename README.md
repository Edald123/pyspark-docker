# Pyspark with Docker

## Commands to build and Run

### Rebuild the Docker Image:

```bash
docker compose build
```

### Run the Container:

```bash
docker compose up -d
```

### Access the Container:

```bash
docker exec -it spark_container bash
```

### Test the Setup. Run the hello_world.py script inside the container:

```bash
python3 hello_world.py
```