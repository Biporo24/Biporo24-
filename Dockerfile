FROM python:3.12-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    bash \
    && rm -rf /var/lib/apt/lists/*

# Install Hermes Agent
RUN pip install --no-cache-dir hermes-agent

# Create working directory
WORKDIR /app

# Create Hermes home directory
RUN mkdir -p /root/.hermes

# Copy config file
COPY config.yaml /root/.hermes/config.yaml

# Expose port for webhook
EXPOSE 8443

# Health check
HEALTHCHECK --interval=60s --timeout=10s --start-period=30s --retries=3 \
  CMD curl -f http://localhost:8443/health || exit 1

# Run gateway
CMD ["hermes", "gateway", "start"]
