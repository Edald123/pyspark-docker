from pyspark.sql import SparkSession

# Initialize a Spark session
spark = SparkSession.builder.appName("HelloWorld").getOrCreate()

# Create a simple DataFrame
data = [("Alice", 30), ("Bob", 35), ("Cathy", 29)]
columns = ["Name", "Age"]
df = spark.createDataFrame(data, columns)

# Show the DataFrame
df.show()

# Stop the Spark session
spark.stop()
