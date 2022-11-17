# Python Image
FROM python:3.10

# Code Directory
WORKDIR /code

# Get Project Requirements 
COPY ./requirements.txt /code/requirements.txt

# Download Project Requeriments
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Get Source Code
COPY ./app /code/app

# Running Project
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
