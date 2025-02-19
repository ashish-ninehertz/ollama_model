#!/bin/sh

# Start the Ollama server in the background
ollama serve &

# Wait for the server to initialize
sleep 5

# Pull the Dolphin-Mistral model
ollama pull dolphin-mistral

# Keep the container running
tail -f /dev/null
