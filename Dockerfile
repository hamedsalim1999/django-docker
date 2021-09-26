# base image
FROM python:3.9.7-buster
ENV PYTHONUNBUFFERED=1
RUN mkdir core
COPY . /core/
WORKDIR /core
RUN pip install -r requirements.txt
RUN python manage.py collectstatic --no-input
CMD ["gunicorn","core.wsgi:application" ,"--bind", ":5000"]

