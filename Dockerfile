# Set base image (host OS)
FROM mcr.microsoft.com/playwright:v1.40.0-jammy

# Install Python and pip
RUN apt-get update && apt-get install -y python3-pip

# copy the requirements file into the image
COPY ./requirements.txt /app/requirements.txt

# switch working directory
WORKDIR /app

# Install Python dependencies
RUN pip install -r requirements.txt

# copy every content from the local file to the image
COPY . /app

# configure the container to run in an executed manner
ENTRYPOINT ["python3"]

CMD ["app.py"]
