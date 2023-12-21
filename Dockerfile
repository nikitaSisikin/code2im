# Set base image (host OS)
FROM ubuntu:22.04

# By default, listen on port 5000
EXPOSE 5000/tcp

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install any dependencies
RUN apt update
RUN apt install python3-pip -y
RUN pip install -r requirements.txt
RUN python3 -m playwright install

# Copy the content of the local src directory to the working directory
COPY app.py .

# Specify the command to run on container start
CMD [ "python", "./app.py" ]