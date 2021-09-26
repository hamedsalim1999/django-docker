# base image
FROM python:3.9.7-buster
ENV PYTHONUNBUFFERED=1
RUN mkdir core
COPY . /core/
WORKDIR /core
RUN pip install -r requirements.txt
CMD ["gunicorn", "--bind", ":5000", "core.wsgi:application"]