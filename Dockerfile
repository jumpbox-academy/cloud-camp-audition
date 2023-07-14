FROM rust:1-slim-bookworm

WORKDIR /app
COPY . .
RUN cargo build --release
RUN mv target/release/cloud-camp .
RUN rm -r target src Cargo.*

EXPOSE 8018
ENTRYPOINT [ "./cloud-camp" ]

