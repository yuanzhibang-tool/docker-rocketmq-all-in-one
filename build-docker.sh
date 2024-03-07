# 1. package dashboard
git clone https://github.com/apache/rocketmq-dashboard.git
docker run --rm -v $PWD/rocketmq-dashboard:/app -w /app maven:3.6.3-jdk-8 mvn clean package -Dmaven.test.skip=true
# 获取打好包的jar包名字
jar_name=$(ls rocketmq-dashboard/target/rocketmq-dashboard-*.jar)
# 复制jar包到rocketmq-dashboard目录，并重命名为rocketmq-dashboard.jar
cp $jar_name rocketmq-dashboard/rocketmq-dashboard.jar
# 2. 构建rocketmq的镜像

repoName='yuanzhibang/rocketmq-all-in-one'
dockerFile='Dockerfile'

docker build -t $repoName:latest -f $dockerFile .  --no-cache

docker image tag $repoName:latest $repoName:5.2.0

docker push $repoName:latest
docker push $repoName:5.2.0