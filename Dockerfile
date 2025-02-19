# Use Ubuntu as the base image
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y curl git 

# Install Ollama
RUN curl -fsSL https://ollama.ai/install.sh | sh

# Expose the Ollama port
EXPOSE 11434

# Set Ollama to bind to all interfaces
ENV OLLAMA_HOST=0.0.0.0:11434

# Ensure the model is pulled before starting the server
RUN ollama pull mistral

# Start Ollama in foreground
CMD ["ollama", "serve"]
