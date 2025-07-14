FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy only what's needed
COPY requirements.txt .

# Install dependencies early to leverage Docker layer caching
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire core folder into the image
COPY core/ ./core

# Set working directory to /app/core
WORKDIR /app/core

# Run your MCP server
CMD ["python", "run_server.py"]
