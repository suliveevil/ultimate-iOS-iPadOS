# Alpine Linux

## 用户管理



```shell
# 添加用户组
addgroup -g 1000 -S 用户组名

# 添加用户
adduser 用户名 -D -G 用户组名 -u 1000 -s /bin/sh

# 创建根用户密码
echo -e "根用户密码\n根用户密码" | passwd root

# 创建用户密码
echo -e "用户密码\n用户密码" | passwd swy

#
chmod 4755 /bin/busybox
```

