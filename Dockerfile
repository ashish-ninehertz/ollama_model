# Use Ubuntu as the base image
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y curl git 

# Install Ollama
RUN curl -fsSL https://ollama.ai/install.sh | sh

# Expose the Ollama port
EXPOSE 11434

# Start Ollama and bind to 0.0.0.0
CMD ollama serve --host 0.0.0.0 & sleep 2 && ollama pull mistral && tail -f /dev/null
