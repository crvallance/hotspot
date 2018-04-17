##! /bin/sh
/home/pi-star/ngrok start --all \
  --config=/home/pi-star/.ngrok2/ngrok.yml \
  --log=stdout \
  > /tmp/ngrok.log &
