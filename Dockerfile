# Use a minimal base image
FROM alpine:latest

# Install necessary tools
RUN apk add --no-cache nginx openssl socat

# Set up working directory
WORKDIR /app

COPY index.html /app

# Expose HTTP and Socat ports
EXPOSE 12345 443

# Default command
CMD ["sh"]
