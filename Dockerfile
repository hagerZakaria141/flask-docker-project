#Use offical pyhton image
FROM python:3.9

# Set working directory inside the container
WORKDIR /app

#Copy requirements file and install dependencies 
COPY requirements.txt ./

RUN pip install -r requirements.txt

#Copy the rest of the app files 

COPY . .

#Command to run the app 
CMD ["python", "app.py"]