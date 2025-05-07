# Placeholder: Dockerfile content
# Use Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy project files (adjust paths if needed)
COPY app/ ./app/
COPY api/ ./api/
COPY data/ ./data/
COPY models/ ./models/
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the Flask app port
EXPOSE 5000

# Run the API
CMD ["python", "api/server.py"]
