trash-put $HADOOP_HOME/etc/hadoop/mapred-site.xml
cp $HADOOP_CPATH/mapred-site-master.xml $HADOOP_HOME/etc/hadoop/mapred-site.xml
user1@c7-master:~/TestBed/gitProjects/clustermanager/setup/engine$ cat ./spark.sh
#PATH needs to be set in .bashrc
#Spark's location

SPARK_MAIN_PATH="/home/user1/TestBed/Software/spark"
SPARK_BIN="$SPARK_MAIN_PATH/spark-1.6.0-bin-without-hadoop"
SPARK_TAR_PATH="$SPARK_BIN/lib/spark-assembly-1.6.0-hadoop2.2.0.jar"
SPARK_COPY_TO="/home/user1"

# Create Hadoop directories
hadoop fs -mkdir /apps
hadoop fs -mkdir /apps/spark

# Upload spark
hadoop fs -copyFromLocal $SPARK_TAR_PATH /apps/spark/spark-assembly.jar

# Delete File If Exists
trash-put "$SPARK_COPY_TO/spark-1.6.0-bin-without-hadoop"

# Copy spark
cp -R $SPARK_BIN $SPARK_COPY_TO

#Set Executive Engine to Spark
trash-put $HADOOP_HOME/etc/hadoop/mapred-site.xml
cp $SPARK_MAIN_PATH/mapred-site.xml $HADOOP_HOME/etc/hadoop/
