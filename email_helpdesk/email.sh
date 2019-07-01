echo "Subject: ATTN-High Load Average Detected on the following nodes" > /gpfs/scratch/rkc10/emaillogs.txt
echo `date` >> /gpfs/scratch/rkc10/emaillogs.txt
echo "" >> /gpfs/scratch/rkc10/emaillogs.txt
cat /gpfs/scratch/rkc10/highloadavg.csv >> /gpfs/scratch/rkc10/emaillogs.txt

/usr/sbin/sendmail -f myemail helpdeskemail < /gpfs/scratch/rkc10/emaillogs.txt
