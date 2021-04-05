import gleam/bit_builder
import gleam/http/elli
import gleam/http

pub fn my_service(_req) {
  let body = bit_builder.from_string("Hello, world!")

  http.response(200)
  |> http.set_resp_body(body)
}

pub fn start() {
  elli.start(my_service, on_port: 3000)
}