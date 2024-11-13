# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set a working directory in the container
WORKDIR /app

# Copy the requirements file for Python dependencies into the container
COPY requirements.txt .

# Install dependencies from the requirements file
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY . .

# Expose port 8080 to allow external access
EXPOSE 8080

# Specify the command to run the application
CMD ["python", "app.py"]

