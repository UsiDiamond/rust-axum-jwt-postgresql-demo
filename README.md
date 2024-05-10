# rust-axum-jwt-postgresql-demo [![Unit Tests](https://github.com/UsiDiamond/rust-axum-jwt-postgresql-demo/actions/workflows/rust.yml/badge.svg)](https://github.com/UsiDiamond/rust-axum-jwt-postgresql-demo/actions/workflows/rust.yml)

A demo API for a presentation on Rust/Axum Architecture and for the enterprise.

## Run example with Doocker

### Build a Docker image

```bash
docker build -t rust-axum-jwt-postgresql-demo .
```

### Run a Docker container

```bash
docker run -p 3000:3000 rust-axum-jwt-postgresql-demo -e JWT_SECRET=bar
```

### Trying it out

- get an authorization token:

```bash
curl -s \
    -w '\n' \
    -H 'Content-Type: application/json' \
    -d '{"client_id":"foo","client_secret":"bar"}' \
    http:localhost:3000/authorize
```

- visit the protected area using the authorized token

```bash
curl -s \
    -w '\n' \
    -H 'Content-Type: application/json' \
    -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJiQGIuY29tIiwiY29tcGFueSI6IkFDTUUiLCJleHAiOjEwMDAwMDAwMDAwfQ.M3LAZmrzUkXDC1q5mSzFAs_kJrwuKz3jOoDmjJ0G4gM' \
    http:localhost:3000/protected
```

- try to visit the protected area using an invalid token

```bash
curl -s \
    -w '\n' \
    -H 'Content-Type: application/json' \
    -H 'Authorization: Bearer blahblahblah' \
    http:localhost:3000/protected
```

## Developer Notes

### Build locally on Windows by command line

```powershell
cargo build --target=i686-pc-windows-msvc
```

### Run on Windows by command line

```powershell
cargo run --target=i686-pc-windows-msvc
```
