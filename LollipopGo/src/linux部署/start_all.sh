ulimit -c unlimited
# sudo sysctl -w kernel.shmmax=4000000000

OLDPWD=`pwd`

while read d c
do
    cd ./ruilide_bin && ./$d $c &
	cd -

	sleep 3

done<mod.txt
