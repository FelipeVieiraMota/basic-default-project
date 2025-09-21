#!/bin/bash

clear
echo "🚀 Running infra-discovery-app containers..."

# Run all containers
docker run -d -p 8761:8761 --name infra-discovery-app-8761 infra-discovery-app

echo "📡 Streaming logs from all containers (Press Ctrl+C to exit)..."

# Show logs from all 3 containers in parallel
docker logs -f infra-discovery-app-8761

# Wait for background jobs (clean exit if Ctrl+C)
wait
