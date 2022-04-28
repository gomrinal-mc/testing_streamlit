#Base Image to use
FROM python:3.7.9-slim
COPY . /app
WORKDIR /app
#Expose port 8080
EXPOSE 8080

#Optional - install git to fetch packages directly from github
RUN apt-get update && apt-get install -y git

#install all requirements in requirements.txt
RUN pip install -r requirements.txt

#Run the application on port 8080
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8080", "--server.address=0.0.0.0"]
