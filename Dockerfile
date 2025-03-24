# Use a lightweight Nginx image
FROM nginx:alpine

# Copy custom Nginx configuration (optional)
#COPY nginx.conf /etc/nginx/nginx.conf

# Copy HTML files to Nginx web root
COPY EULA.html privacy-policy.html /usr/share/nginx/html/

# Expose port 80 (default HTTP port)
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
