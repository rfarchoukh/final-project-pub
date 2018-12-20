from python:3
WORKDIR /usr/src/app
CMD ["python", "-m", "http.server", "80"]