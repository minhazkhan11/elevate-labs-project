FROM nginx
COPY . /usr/share/nginx/html
RUN chmod +x /usr/share/nginx/html/run-tests.sh
CMD ["nginx", "-g", "daemon off;"]
