# syntax=docker/dockerfile:1

# Start from a minimal Nginx image (Alpine variant keeps it small)
FROM nginx:alpine

# Set the working directory to Nginx’s default html folder
WORKDIR /usr/share/nginx/html

# Remove the default static assets shipped with the base image
RUN rm -rf ./*

# Copy *all* files from the build context (your current project directory)
# into the container image
COPY . .

# If you have a custom Nginx config, uncomment the next line and include
#   your nginx.conf at the project root
# COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

# Keep Nginx running in the foreground
CMD ["nginx", "-g", "daemon off;"]