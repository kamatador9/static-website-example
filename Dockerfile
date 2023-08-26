FROM nginx
LABEL maintainer="KAMSU KOM"
RUN yum update && \
    yum upgrade -y && \
    yum install -y curl && \
    yum install -y git
RUN rm -Rf /usr/share/nginx/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /usr/share/nginx/html
CMD nginx -g 'daemon off;'
