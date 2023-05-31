FROM scratch

WORKDIR /usr/src/app

COPY app /usr/src/app

CMD ["./app"]