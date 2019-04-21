FROM nginx:latest

ENV CLUB_URL="http://ermu0420.club"

COPY mysite.template /etc/nginx/mysite.template

CMD envsubst '$CLUB_URL' < /etc/nginx/mysite.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
EXPOSE 80