# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY app/requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY app/ .

# Command to run the FastAPI application
CMD ["uvicorn", "main:app", "--host", "172.18.61.218", "--port", "8080"]
