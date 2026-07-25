FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY index.html ./
COPY glucotrust-product.png ./

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 3004

CMD ["nginx", "-g", "daemon off;"]