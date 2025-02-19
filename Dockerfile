# Use Ubuntu as the base image
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y curl git 

# Install Ollama
RUN curl -fsSL https://ollama.ai/install.sh | sh

# Pull a specific Ollama model (e.g., Mistral)
RUN ollama pull mistral

# Expose the Ollama port
EXPOSE 11434

# Start Ollama server
CMD ["ollama", "serve"]
