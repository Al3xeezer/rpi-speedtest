FROM resin/rpi-raspbian:latest

RUN apt update && apt upgrade && apt install python-pip && pip install speedtest-cli && apt install cron
RUN mkdir /mnt/speedtest
RUN (crontab -l ; echo "0 * * * * /usr/local/bin/speedtest-cli --csv >> /mnt/speedtest/logs.csv") | crontab -
CMD cron -f
VOLUME /mnt/speedtest
