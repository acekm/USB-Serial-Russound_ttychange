FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN /usr/local/bin/pip install --no-cache-dir -r requirements.txt

COPY tcp_serial_redirect.py ./

CMD ["python", "tcp_serial_redirect.py"]
