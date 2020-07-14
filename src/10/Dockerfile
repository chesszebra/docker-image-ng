FROM chesszebra/node:latest

# Run as root
USER root:root

# Install system dependencies
RUN apk add --no-cache tini git

# Install Angular CLI
RUN npm install -g @angular/cli@10

# Add the entry point script
ADD usr/local/bin/docker-image-entrypoint.sh /usr/local/bin/docker-image-entrypoint

# Run as node:node
USER node:node

# Expose port 4200 used for development
EXPOSE 4200

# Execute the entry point
ENTRYPOINT ["/usr/local/bin/docker-image-entrypoint"]

# The default command to execute
CMD ["ng"]
