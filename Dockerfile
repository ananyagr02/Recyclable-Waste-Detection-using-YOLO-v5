# Use Python 3.7 slim-buster as the base image
FROM python:3.7-slim-buster

# Set the working directory
WORKDIR /app

# Copy the application code to the container
COPY . /app

# Update and install dependencies
RUN apt-get update && apt-get install -y \
    ffmpeg \
    libsm6 \
    libxext6 \
    unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Expose the port your application listens on
EXPOSE 5000

# Command to run your application
CMD ["python3", "app.py"]
