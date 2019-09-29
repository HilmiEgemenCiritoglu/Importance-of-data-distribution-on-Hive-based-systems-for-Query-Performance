#PATH needs to be set in .bashrc
#Tez's location

TEZ_MAIN_PATH="/home/user1/TestBed/Software/tez"
TEZ_TAR_PATH="$TEZ_MAIN_PATH/tez-0.9.2.tar.gz"
TEZ_BIN="$TEZ_MAIN_PATH/apache-tez-0.9.2-bin"
TEZ_COPY_TO="/home/user1"

# Create Hadoop directories
hadoop fs -mkdir /apps
hadoop fs -mkdir /apps/tez

# Upload tez
hadoop fs -copyFromLocal $TEZ_TAR_PATH /apps/tez/

# Delete File If Exists
trash-put "$TEZ_COPY_TO/apache-tez-0.9.2-bin"

# Copy Tez
cp -R $TEZ_BIN $TEZ_COPY_TO

#Set Executive Engine to Tez
trash-put $HADOOP_HOME/etc/hadoop/mapred-site.xml
cp $TEZ_MAIN_PATH/mapred-site.xml $HADOOP_HOME/etc/hadoop/
