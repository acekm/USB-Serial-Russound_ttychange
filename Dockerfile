FROM python:3

WORKDIR /usr/src/app

RUN /usr/local/bin/pip install --no-cache-dir -r pyserial

COPY tcp_serial_redirect.py ./

CMD ["python", "tcp_serial_redirect.py"]
