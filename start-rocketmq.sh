# startup namesrv
nohup sh bin/mqnamesrv &
# startup broker 
nohup sh bin/mqbroker -n localhost:9876 --enable-proxy &

# startup rocketmq dashboard

java -Drocketmq.namesrv.addr=127.0.0.1:9876 -Dserver.port=8084 -jar rocketmq-dashboard.jar