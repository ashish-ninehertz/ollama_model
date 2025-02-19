# Use Ubuntu as the base image
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y curl git 

# Install Ollama
RUN curl -fsSL https://ollama.ai/install.sh | sh

# Expose the Ollama port
EXPOSE 11434

# Set the OLLAMA_HOST environment variable and start Ollama
ENV OLLAMA_HOST=0.0.0.0:11434

# Start Ollama and pull the model
CMD ollama serve & sleep 2 && ollama pull mistral && tail -f /dev/null
