# Commands to Build and Run
### Build the Docker Image:

```bash
sudo docker compose build
```

### Start the Container:

```bash
sudo docker compose up -d
```

### Verify the Container is Running:

```bash
sudo docker ps
```

### Enter the Container:

```bash
sudo docker exec -it spark_container bash
```

### Run the PySpark Script:

```bash
python3 /app/hello_world.py
```

### Stop the Container:

```bash
sudo docker compose down
```