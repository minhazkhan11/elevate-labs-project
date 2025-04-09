FROM nginx
COPY . /usr/share/nginx/html
COPY run-tests.sh /usr/share/nginx/html/run-tests.sh
CMD ["nginx", "-g", "daemon off;"]

