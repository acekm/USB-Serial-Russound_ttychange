# Use a minimal Python image as a base
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install the dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Python script into the container
COPY tcp_serial_redirect.py /app/

# Set up the device and run the command
CMD ["python", "tcp_serial_redirect.py", "--rts", "1", "--dtr", "1", "/dev/ttyUSB0", "19200"]
