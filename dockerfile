# Use the official python image as the base image
FROM python:3.9-slim-buster

#Set the working directory in the container
WORKDIR /app

#Copy the requirements file to the working directory
COPY requirement.txt  /app

#Install the required python packages
RUN pip install --no-cache-dir -r requirement.txt

#Copy the application code to the working directory
COPY . /app

#set the environment variables for the Flask app
ENV FLASK_RUN_HOST=0.0.0.0

#Expose the port on which the Flask app will run
EXPOSE 5000

#Start the Flask app when the container is run
CMD ["flask", "run", "--host=0.0.0.0"]