readonly SCRIPT=$(basename $0)
readonly AUTHOR="Rahim Charania"
readonly REVISION="1.0"

bash first_draft.sh > loadavg.csv

for i in (1..10)

do

time= `date +"%Y%m%d_%H%M%p"`
sort -k2 -n -r -t, loadavg.csv|awk -F ',' '$2>=40' > highloadavg.csv

if [ -s highloadavg.csv ]
then
        ##send email script and sleep for time unitl next one

########
echo "Subject: ATTN-High Load Average Detected on the following nodes" > /gpfs/scratch/rkc10/quotaemaillogs.txt
echo `date` >> /gpfs/scratch/rkc10/quotaemaillogs.txt
echo "" >> /gpfs/scratch/rkc10/quotaemaillogs.txt
cat /gpfs/scratch/rkc10/highloadavg.csv >> /gpfs/scratch/rkc10/quotaemaillogs.txt

/usr/sbin/sendmail -f rkc10@psu.edu rkc10@psu.edu < /gpfs/scratch/rkc10/quotaemaillogs.txt
######


else
        rm -f highloadavg.csv
        ##sleep for time until next one
fi

sleep 1200

done
