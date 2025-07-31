FROM python:3.12-alpine
WORKDIR /project
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt 
COPY /app .
RUN chmod +x ./start.sh
CMD [ "sh", "./start.sh" ]
