FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y

COPY . .

RUN pip install streamlit

#Expose is not needed for Heroku deployment
EXPOSE 8501

CMD streamlit run --server.port $PORT app.py



