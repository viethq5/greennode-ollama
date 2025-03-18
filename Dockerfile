ARG OLLAMA_VERSION=0.6.2

# Use an official base${OLLAMA_VERSION} image with your desired version
FROM ollama/ollama:${OLLAMA_VERSION}

ENV PYTHONUNBUFFERED=1 

# Set the working directory
WORKDIR /app

COPY start.sh /app/start.sh

RUN chmod +x /app/start.sh

ENV OLLAMA_MODELS="/network-volume"

# Set the entrypoint
ENTRYPOINT ["/bin/sh", "-c", "/app/start.sh"]
