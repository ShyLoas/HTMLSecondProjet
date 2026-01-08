FROM nginx:alpine

# Copy toàn bộ file
COPY . /usr/share/nginx/html

# Thêm cấu hình trực tiếp trong Dockerfile
RUN echo 'server { \
    listen 80; \
    location / { \
        root /usr/share/nginx/html; \
        index index.html index.htm; \
        try_files \$uri \$uri/ /index.html; \
    } \
}' > /etc/nginx/conf.d/default.conf

EXPOSE 80
