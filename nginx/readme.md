# nginx

### docker-compose.yml 说明

```yaml
version: '3.1'

services:
  nginx:
    image: nginx:1.15.4
    restart: always
    container_name: nginx_1.15.4
    env_file:
      - env
    ports:
      - "80:80"
    volumes:
      - "./conf/nginx.conf:/etc/nginx/nginx.conf"
      - "./conf/conf.d:/etc/nginx/conf.d"
      - "./logs:/var/log/nginx" 

```
- /etc/nginx/nginx.conf 配置文件
- /etc/nginx/conf.d 配置文件引用目录
- /var/log/nginx 日志目录