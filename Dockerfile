# Use a lightweight Nginx image
FROM nginx:alpine

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# (Optional) Add a custom Nginx config if you have one, 
# otherwise Nginx uses its internal defaults which work fine for simple HTML.

# Copy your website files to the Nginx web root
# We copy everything (.) to the html folder
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 800

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
