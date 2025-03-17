# use the official python image
from python:3.10
# Set the working Directory in the container
workdir /app
# copy the project files into the container
copy . /app
# install Dependencies
run pip install --no-cache-dir -r requirements.txt
# Expose the port Django runs on
expose 8000
# Run the applications
cmd ["python","manage.py","runserver","0.0.0.0:8000"]
