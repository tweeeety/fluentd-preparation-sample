#!/bin/sh

# 
ac_log_list=`cat /hoge/fuga/piyo/aclog_list.txt`
ac_log_dir=/var/log/td-agent/project/aclog
slink_dir=/var/log/td-agent/project/slink

# 環境によってdir構成が異なる場合modeで判定
hostname=`hostname -s`
if [[ $hostname =~ ^sv(db)??1$ ]]; then
    mode=dev
elif [[ $hostname =~ ^sv(db)??2$ ]]; then
    mode=stg
else
    mode=prd
fi

# 本番のみdir違うとか
if [[ "${mode}" = "prd" ]]; then
    ac_log_dir=/var/log/td-agent/sv99/project/aclog
fi

# 
for var in $ac_log_list
do
	#echo $var
	#echo ${ac_log_dir}/aclog.${var}.`date "+%Y-%m-%d"`
	#echo ${slink_dir}/aclog.${var}.log
	ln -nfs ${ac_log_dir}/aclog.${var}.`date "+%Y-%m-%d"` ${slink_dir}/aclog.${var}.log
done
