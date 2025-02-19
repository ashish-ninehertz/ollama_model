# Use Ubuntu as the base image
FROM ubuntu:22.04

# Set noninteractive mode to prevent prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt update && apt install -y curl git sudo 

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Download the Ollama model (e.g., "mistral")
RUN ollama pull mistral

# Expose the Ollama API port
EXPOSE 11434

# Start Ollama server
CMD ["ollama", "serve"]
