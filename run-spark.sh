./dist/bin/spark-sql \
    --packages io.delta:delta-core_2.12:1.0.1 \
    -c spark.hadoop.aws.region=us-east-1 \
    -c spark.hadoop.fs.s3a.aws.credentials.provider=org.apache.hadoop.fs.s3a.TemporaryAWSCredentialsProvider \
    -c "spark.sql.extensions=io.delta.sql.DeltaSparkSessionExtension" \
    -c "spark.sql.catalog.spark_catalog=org.apache.spark.sql.delta.catalog.DeltaCatalog"