local_ip=192.168.1.9
for port in `seq 7001 7006`; do \
  mkdir -p redis-${port}/conf \
  && PORT=${port} IP=${local_ip} envsubst < redis-cluster.tmpl > redis-${port}/conf/redis.conf \
  && mkdir -p redis-${port}/data;\
done