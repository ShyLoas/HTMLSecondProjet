# Sử dụng Nginx để serve HTML
FROM nginx:alpine

# Copy tất cả file HTML vào thư mục mặc định của Nginx
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
