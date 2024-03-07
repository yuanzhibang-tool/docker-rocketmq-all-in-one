FROM apache/rocketmq:5.2.0

RUN echo 'start build'
RUN LC_ALL=C.UTF-8

COPY rocketmq-dashboard/rocketmq-dashboard.jar /home/rocketmq/rocketmq-5.2.0/rocketmq-dashboard.jar

COPY start-rocketmq.sh /home/rocketmq/rocketmq-5.2.0/start-rocketmq.sh
# set workspace dir

WORKDIR /home/rocketmq/rocketmq-5.2.0

# expose port
EXPOSE 8080 9876 10909 10911 10912

ENTRYPOINT ["sh", "start-rocketmq.sh"]