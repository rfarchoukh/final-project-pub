from python:3

COPY index.html .

CMD ["python", "-m", "http.server", "80"]