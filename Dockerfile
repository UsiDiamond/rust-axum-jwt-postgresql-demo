# Use the latest version of the Rust base image
FROM rust:latest

# Set the working directory in the container to /my
WORKDIR /usr/src/rust-rocket-postgresql-demo

# Copy the Rust project files to the working directory
COPY ./src src
COPY Cargo.toml .
COPY Cargo.lock .

# Build the Rust app
RUN  cargo build

ARG JWT_SECRET

EXPOSE 3000

# Set the command to run the Rust app
CMD cargo run

