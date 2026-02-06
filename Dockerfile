FROM eclipse-temurin:17-jre

# Create app directory
WORKDIR /app

# Copy everything in the repo into the image
COPY . .

# Render sets PORT as an environment variable.
# If your relay supports --port, use it. If not, this will just ignore PORT.
CMD ["sh", "-c", "java -jar EaglerSPRelay.jar --debug --port ${PORT:-8081}"]
