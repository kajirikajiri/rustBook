FROM rust:1.31

WORKDIR /usr/src/myapp
COPY . .

ENV USER=kajiri
RUN cargo init .

RUN cargo install --path .

CMD ["myapp"]
