sed -r -i "s/(zookeeper.connect)=(.*)/\1=$ZK_PORT_2181_TCP_ADDR/g" $KAFKA_HOME/config/server.properties
sed -r -i "s/(broker.id)=(.*)/\1=$BROKER_ID/g" $KAFKA_HOME/config/server.properties
sed -r -i "s/#(advertised.host.name)=(.*)/\1=$HOST_IP/g" $KAFKA_HOME/config/server.properties
sed -r -i "s/^(port)=(.*)/\1=$PORT/g" $KAFKA_HOME/config/server.properties
sed -r -i "s@(log.dirs)=(.*)@\1=$DATA_DIR@g" $KAFKA_HOME/config/server.properties

sed -r -i "s@(kafka.logs.dir)=(.*)@\1=$LOG_DIR@g" $KAFKA_HOME/config/log4j.properties

cat $KAFKA_HOME/config/log4j.properties > $LOG_DIR/log4j.properties
cat $KAFKA_HOME/config/server.properties > $LOG_DIR/server.properties

$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties
