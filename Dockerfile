# Use Python base image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Expose the port and define the entrypoint
EXPOSE 5000
CMD ["python", "app.py"]
