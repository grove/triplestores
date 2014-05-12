sed -r -i "s@(dataDir)=(.*)@\1=$DATA_DIR@g" $KAFKA_HOME/config/zookeeper.properties
#echo "clientPortAddress=${HOST_IP}\n" >>  $KAFKA_HOME/config/zookeeper.properties

sed -r -i "s@(kafka.logs.dir)=(.*)@\1=$LOG_DIR@g" $KAFKA_HOME/config/log4j.properties

cat $KAFKA_HOME/config/log4j.properties > $LOG_DIR/log4j.properties
cat $KAFKA_HOME/config/zookeeper.properties > $LOG_DIR/zookeeper.properties

$KAFKA_HOME/bin/zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties

