# tcp_serial_redirect
Dockerfile wrapper for [pySerial](https://github.com/pyserial/pyserial/)'s [tcp_serial_redirect.py example](https://github.com/pyserial/pyserial/blob/master/examples/tcp_serial_redirect.py).

Example starting this for use in [Home Assistant](https://www.home-assistant.io/)'s [Russound RNET Integration](https://www.home-assistant.io/integrations/russound_rnet/):
```
docker run -itd \
  --restart always \
  --device /dev/ttyUSB0 \
  -p 7777:7777 \
  --name tcp_serial_redirect \
  ghcr.io/kevinreedy/tcp_serial_redirect \
  python tcp_serial_redirect.py --rts 1 --dtr 1 /dev/ttyUSB0 19200
```
