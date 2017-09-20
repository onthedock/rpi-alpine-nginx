docker stop website
docker rm website
docker run -d \
  --name website \
  -v /home/pirate/web/:/var/www:ro \
  -p 8000:80 \
  xaviaznar/rpi-alpine-nginx
