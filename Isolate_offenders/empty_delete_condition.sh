if [ -s highloadavg.csv ]
then
        ##send email script and sleep for time unitl next one
else
        rm -f highloadavg.csv
        ##sleep for time until next one
fi
