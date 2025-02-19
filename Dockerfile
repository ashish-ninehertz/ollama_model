# Use Ubuntu as the base image
FROM ubuntu:22.04

# Set non-interactive mode for silent installation
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl git && \
    rm -rf /var/lib/apt/lists/*

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Expose Ollama's default port
EXPOSE 11434

# Pull the required model (change to your model)
RUN ollama pull mistral

# Start Ollama when the container runs
CMD ["ollama", "serve"]
