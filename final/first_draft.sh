readonly SCRIPT=$(basename $0)
readonly AUTHOR="Rahim Charania"
readonly REVISION="1.0"


pbsnodes > TEXT


###cat text|grep comp-bc-0264|sed -n -e 's/^.*loadave=//p'|cut -d, -f1

for i in comp-bc-{0001..0358}
do
        echo "$i,`cat TEXT|grep $i|sed -n -e 's/^.*loadave=//p'|cut -d, -f1`"
done


for i in comp-sc-{0001..0528}
do
        echo "$i,`cat TEXT|grep $i|sed -n -e 's/^.*loadave=//p'|cut -d, -f1`"
done


for i in comp-lc-{0001..0096}
do
        echo "$i,`cat TEXT|grep $i|sed -n -e 's/^.*loadave=//p'|cut -d, -f1`"
done
