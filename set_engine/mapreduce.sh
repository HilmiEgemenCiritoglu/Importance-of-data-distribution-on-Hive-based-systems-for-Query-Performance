#PATH needs to be set in .bashrc
HADOOP_CPATH='/home/user1/TestBed/gitProjects/clustermanager/yamls/configs/homogeneousCluster'

#Set Executive Engine to MapReduce
trash-put $HADOOP_HOME/etc/hadoop/mapred-site.xml
cp $HADOOP_CPATH/mapred-site-master.xml $HADOOP_HOME/etc/hadoop/mapred-site.xml
