FROM chesszebra/node:14.4

# Run as root
USER root

# Install Angular CLI
RUN npm install -g @angular/cli

# Install Tini
ENV TINI_VERSION v0.17.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /sbin/tini
RUN chmod +x /sbin/tini

# Add the entry point script
ADD usr/local/bin/docker-image-entrypoint.sh /usr/local/bin/docker-image-entrypoint

# Make it executable
RUN chmod +x /usr/local/bin/docker-image-entrypoint

# Run as node:staff
USER node:staff

USER node

# Expose port 4200 used for development
EXPOSE 4200

# Execute the entry point
ENTRYPOINT ["/usr/local/bin/docker-image-entrypoint"]

# The default command to execute
CMD ["ng"]
