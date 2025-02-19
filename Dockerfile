# Use the official Ollama base image
FROM ollama/ollama:latest

# Set environment variables
ENV OLLAMA_HOST 0.0.0.0

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Give execution permissions to the script
RUN chmod +x /entrypoint.sh

# Start the script on container startup
CMD ["/entrypoint.sh"]
