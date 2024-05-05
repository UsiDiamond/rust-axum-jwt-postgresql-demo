# Use the latest version of the Rust base image
FROM rust:latest

# Set the working directory in the container to /my
WORKDIR /usr/src/rust-rocket-postgresql-demo

# Copy the Rust project files to the working directory
COPY . .

# Build the Rust app
RUN  rustup override set nightly && cargo build

EXPOSE 9090

# Set the command to run the Rust app
CMD cargo run

