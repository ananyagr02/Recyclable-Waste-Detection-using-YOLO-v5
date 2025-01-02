# Use Python 3.9 as the base image
FROM python:3.9-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy application files to the container
COPY . /app

# Update system packages and install OS-level dependencies
RUN apt-get update && apt-get install -y \
    ffmpeg \
    libsm6 \
    libxext6 \
    unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Expose the port your application listens on
EXPOSE 5000

# Set environment variable for Google Cloud Run
ENV PORT=8080

# Define the command to run your application
CMD ["python", "app.py"]
