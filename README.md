# Simple Analytical Docker Image
## Build
To build you will need to run the following commands
`docker build -t <username>/spark:<version> .`

Example of my last build command
`docker build -t cwoodley/spark:v2 .`

If you are modifying the DockerFile or Image you will want to add a --rm to the build. That will allow you to iterate your build script and not leave you with orphan images. When you are done just remove the --rm

To run the spark container
 `docker run --name SparkTest2.0 --rm -it -p 8888:8888 cwoodley/spark:v2`

If you need to persist the container then you will want to remove the --rm

## What is included
1. Spark 2.0
2. Python 2.7
3. R 3.3.1
4. Jupyter Notebook

## What I may add next
1. Zeppelin
