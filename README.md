# k8s-ansible简介
通过ansible快速创建k8s集群

binaries参考 [k8s github](#https://github.com/kubernetes/kubernetes)
查看对应版本的CHANGELOG-1.6.md中对应子版本的Server Binaries  kubernetes-server-linux-amd64.tar.gz

该分支对应的为
3 master  node  3 etcd

# 步骤
* 修改 .ssh/config文件
* 安装git
* 安装ansible
* git clone
* 修改customer下的文件
* copy ansible-host 至 /etc/ansible/conf下
* 执行ansible命令
* 创建sa node-role
* 赋权 
* 配置kubeconfig

