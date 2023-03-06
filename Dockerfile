FROM python:latest
WORKDIR /app

RUN echo "Copying simple-flask-app Repository to /app"
COPY . .

EXPOSE 5000

RUN echo "Installing requiremets.txt"

RUN pip install -r requirements.txt
RUN echo "Running main.py"
CMD ["python","main.py"]
RUN echo "All task complete!!!"
