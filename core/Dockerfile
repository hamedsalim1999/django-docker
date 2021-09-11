# base image
FROM python:3.9.7-buster
ENV PYTHONUNBUFFERED=1
RUN mkdir core
WORKDIR /core
# COPY requirements.txt /code/
COPY . /core/
RUN pip install -r requirements.txt
# RUN python manage.py makemigration --n
CMD ["gunicorn", "--bind", ":8000", "core.wsgi:application"]