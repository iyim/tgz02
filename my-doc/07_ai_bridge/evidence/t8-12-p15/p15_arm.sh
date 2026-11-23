#!/system/bin/sh
# T8-12.15: 装回被动观测探针（takeover 始终关闭；只改 onNlpResult 入口 8 字节）
INJ_P14=/data/local/tmp/t8/backup_p14/tg_injector.p14
INJ_P15=/data/local/tmp/t8/tg_injector_p15
LIB_P14=/data/local/tmp/t8/libtg_hook.so
LIB_P15=/data/local/tmp/t8/libtg_hook_p15.so
NAME=com.alibaba.ailabs.genie.smartapp:core
set -x
$INJ_P14 --name $NAME --so $LIB_P14 --uninstall
$INJ_P15 --name $NAME --so $LIB_P15
$INJ_P15 --name $NAME --so $LIB_P15 --nlu-install