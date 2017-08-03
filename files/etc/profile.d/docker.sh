export DOCKER_0=`/sbin/ifconfig docker0 |grep 'inet addr' |  cut -d: -f2 |awk '{ print $1}'`
