FROM python:3.9
MAINTAINER joy liao
COPY ./ /app
WORKDIR /app
RUN pip install -r ./requirements.txt
EXPOSE 80
CMD python -m uvicorn main:app --host 0.0.0.0 --port 80 