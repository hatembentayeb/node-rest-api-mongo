FROM alpine
WORKDIR app
RUN adduser --disabled-password btx
RUN rm -f /bin/cat /bin/ls /bin/mv /bin/find /bin/cd 
COPY hatem .
COPY .env .
EXPOSE 3000
RUN chown -R btx:btx /app
USER btx
CMD  ["./hatem"]