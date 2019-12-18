# BT_Panel_Docker_Nginx
宝塔面板（bt.cn）的 Docker 镜像，已经安装好 LNMP，下载即用。

# 介绍
本项目是宝塔面板（bt.cn）的Docker容器版本，基于CentOS7，已安装 LNMP 环境

此项目为 Nginx 版本的，如果你喜欢 Apache 当然可以选择 Apache 版本的。

宝塔面板 Docker 镜像 Apache 版：https://github.com/Writeup001/BT_Panel_Docker_Apache

此镜像具体环境配置如下：
```
CentOS 7

Nginx 1.16

PHP 5.6

MySQL 5.6
```

# 编译安装
```
docker build -t bt_panel_nginx .
```
编译安装大约需要 10 分钟左右，当然也取决于当前机器的配置等。

在编译安装完成之后会提示随机产生的宝塔面板（bt.cn）后台登陆入口，以及帐号密码等信息，请妥善保管。

如果觉得编译安装比较麻烦，可以使用下面的在线安装，直接拉取 Docker Hub 的镜像。

# Docker 在线安装
```
docker pull writeup/bt_panel_nginx
```
这种方法是直接从 Docker Hub 上直接拉取下来的，

# 使用方法
宝塔面板（bt.cn）需要开放的端口为 8888|888|80|443|20|21 分别为后台地址端口，phpMyAdmin 端口，Web 端口，HTTPS 端口，FTP 传输端口，FTP 接受端口。

因为此镜像中仅安装了基本的 LNMP 服务，所以，仅需开放 8888 端口和 80 端口即可。如果你需要 HTTPS 的话也可以另行开启。

## 启动命令
```
docker run -itd -p 80:80 -p 888:888 -p 8888:8888 --name bt_panel_nginx writeup/bt_panel_nginx /bin/bash
```
## 进入 Docker
```
docker exec -it bt_panel_nginx /bin/bash
```
进入 Docker 时会再次显示当前宝塔面板（bt.cn）的帐号密码等基本信息，所有内容你均可以进行修改。

## 删除 Docker 名字
如果开启多次的话会提示名字已被占用，此时就需要删除原来的名字了，此命令并不会删除镜像文件。
```
docker rm -f bt_panel_nginx
```

# 默认帐号密码
如果你是从 Docker Hub 上拉取下来的，那么帐号密码默认为以下：
```
Bt-Panel-URL: http://IP:8888/3da2098a

username: 7a2hvykv

password: 7e58e233
```
如果你想修改默认密码，则可以进入 Docker 内之后进行修改，可以在终端输入命令 ```bt``` 进行查看修改相关信息。

宝塔Linux面板命令大全：https://www.bt.cn/btcode.html


# License
本项目代码使用 **GNU General Public License v3.0** 协议

但是因为本项目主要功能来自于宝塔面板（bt.cn），所以在使用时仍需要遵守宝塔面板的使用协议

宝塔开源许可协议 && 用户协议：http://www.bt.cn/kyxy.html

