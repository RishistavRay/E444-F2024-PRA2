FROM python:3.9-slim

COPY requirements.txt .

RUN pip install virtualenv
RUN virtualenv venv

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP=app.py

EXPOSE 5000

# Command to run the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]

