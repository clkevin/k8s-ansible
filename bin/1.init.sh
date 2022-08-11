#!/bin/bash


######### init host ips

# 替换换行为;
ips=`cat ~/k8s-ansible/customer/hosts |awk '{print $1}' |sed ':jix;N;s/\n\n/\n/g;b jix'|sed ':jix;N;s/\n/;/g;b jix'`

echo $ips

# 判断是不是以;结束，如果是则去掉
if echo "$ips" | grep -q -E ';$'
then
	ips=${ips%?}
else
	ips=${ips}
fi

echo $ips

# 替换;为”,"
ips=${ips//;/\",\"}

echo $ips

# 添加开头和结尾的"
ips='"'${ips}'"'

echo $ips

echo $ips > ~/k8s-ansible/customer/hostips.csv

######## init token

head -c 16 /dev/urandom | od -An -t x | tr -d ' ' > ~/k8s-ansible/customer/token.csv
