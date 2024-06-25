mkdir -p redis-700{0,1,2,3,4,5}/data

docker run -d --name redis-7000 \
-v ./redis-7000/config/redis.conf:/redis.conf \
--net=host \
--restart=always \
redis \
redis-server /redis.conf

docker run -d --name redis-7001 \
-v ./redis-7001/config/redis.conf:/redis.conf \
--net=host \
--restart=always \
redis \
redis-server /redis.conf

docker run -d --name redis-7002 \
-v ./redis-7002/config/redis.conf:/redis.conf \
--net=host \
--restart=always \
redis \
redis-server /redis.conf

docker run -d --name redis-7003 \
-v ./redis-7003/config/redis.conf:/redis.conf \
--net=host \
--restart=always \
redis \
redis-server /redis.conf


docker run -d --name redis-7004 \
-v ./redis-7004/config/redis.conf:/redis.conf \
--net=host \
--restart=always \
redis \
redis-server /redis.conf


docker run -d --name redis-7005 \
-v ./redis-7005/config/redis.conf:/redis.conf \
--net=host \
--restart=always \
redis \
redis-server /redis.conf



redis-cli --cluster create \
192.168.0.102:7000 192.168.0.102:7001 \
192.168.0.102:7002 192.168.0.102:7003 \
192.168.0.102:7004 192.168.0.102:7005 \
--cluster-replicas 1

 redis-cli -a 1234 -h 192.168.0.102 -p 7005  
 redis-cli -h  10.10.1.84  -p 7000