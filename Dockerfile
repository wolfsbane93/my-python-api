# Use a base Python image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Expose the port the app runs on
EXPOSE 80

# Command to run the API
CMD ["python", "app.py"]
