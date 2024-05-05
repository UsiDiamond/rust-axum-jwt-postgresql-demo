# rust-axum-jwt-postgresql-demo

A demo API for a presentation on Rust/Axum Architecture and for the enterprise.

## Quick instructions

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
