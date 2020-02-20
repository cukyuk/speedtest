
#!/bin/bash
BASENAME=$(basename $0)
LOG=/home/cuky/projects/speedtest/${BASENAME}.log
cp /dev/null /tmp/${BASENAME}.tmp
cd /home/cuky/projects/speedtest
./speedtest-cli --list |egrep '\[[0-7][0-9]\.[0-9]* km\]' >./servers.dat
touch ./servers.done
NOS=$(wc -l ./servers.dat | awk '{print$1}')
USED=$(wc -l ./servers.done | awk '{print$1}')
if [[ $NOS -le $USED ]]
then
        rm ./servers.done
fi
touch ./servers.done
ALL=$(cat servers.dat |awk -F')' '{print$1}' |sed 's/ //g')
for i in $ALL
do
  grep $i ./servers.done
  if [[ $? -eq 0 ]]
  then
        echo "Already hit $i"
        continue
  else
        echo "Testing at $i"
        ./speedtest-cli  --server $i |tee /tmp/${BASENAME}.tmp
        echo $i >>./servers.done
        break
  fi
done
HOSTED=$(echo $(cat /tmp/${BASENAME}.tmp  |grep '^Hosted' |paste - - - ))
PINGTIME=$(echo $HOSTED| awk -F':' '{print$2}')
DOWNLOAD=$(echo $(cat /tmp/${BASENAME}.tmp  |grep  '^Download'  |paste - - - ))
UPLOAD=$(echo $(cat /tmp/${BASENAME}.tmp  |grep '^Upload' |paste - - - ))
SPEED=$(echo $(cat /tmp/${BASENAME}.tmp  |grep -e '^Hosted' -e '^Download' -e '^Upload' |paste - - - ))
SERVERNUMBER=$(cat ./servers.done |tail -1)
NOW=$(date +"%Y-%m-%d_%H:%M")

echo "$NOW $BASENAME ping $PINGTIME $DOWNLOAD $UPLOAD  servernumber $SERVERNUMBER $HOSTED" |tee -a $LOG
