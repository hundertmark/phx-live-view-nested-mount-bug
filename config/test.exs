import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :nested, NestedWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "e4JJ9wrh6aRilR8rwdG3+itEQzbO3ZKLM3jjSAS2ZuAnjP90fx4i4CUOB1vmiBgb",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
