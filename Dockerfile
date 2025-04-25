# Base image with Python and OpenCV
FROM python:3.11-slim

# System dependencies for face_recognition & dlib
RUN apt-get update && apt-get install -y \
    cmake \
    build-essential \
    libgtk2.0-dev \
    libboost-all-dev \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy code and dependencies
COPY requirements.txt ./
COPY . .

# Install Python packages
RUN pip install --upgrade pip && pip install -r requirements.txt

# Expose camera access (needed if using webcam)
ENV DISPLAY=:0

# Run the Python script
CMD ["python", "main.py"]
