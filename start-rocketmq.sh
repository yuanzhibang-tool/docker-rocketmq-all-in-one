# startup namesrv
nohup sh bin/mqnamesrv &
# startup broker 
nohup sh bin/mqbroker -n localhost:9876 --enable-proxy &

# startup rocketmq dashboard

java -jar rocketmq-dashboard.jar