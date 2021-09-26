# base image
FROM python:3.9.7-buster
ENV PYTHONUNBUFFERED=1
RUN mkdir core
COPY . /core/
WORKDIR /core
RUN pip install -r requirements.txt
<<<<<<< HEAD
CMD ["gunicorn", "--bind", ":5000", "core.wsgi:application"]
=======
CMD ["gunicorn", "--bind", ":5000", "core.wsgi:application"]
>>>>>>> 3c205e361e40fde21b4041b7f6961be522ad06a9
