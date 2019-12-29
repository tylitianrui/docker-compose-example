# pgsql

默认安装：账号为`postgres` 

##登陆docker安装的pgsql
```text
docker  exec -it  postgres psql  -U postgres
```
选择数据库进行登陆
```text
docker  exec -it  postgres psql  -U postgres -W postgres
```
说明：  
-U `<user> ` -W  `<database>`