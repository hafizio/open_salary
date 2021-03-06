import Config

database_url =
  System.get_env("DATABASE_URL") ||
    raise """
    environment variable DATABASE_URL is missing.
    For example: ecto://USER:PASS@HOST/DATABASE
    """

config :open_salary, OpenSalary.Repo,
  ssl: true,
  url: database_url,
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10")

secret_key_base =
  System.get_env("SECRET_KEY_BASE") ||
    raise """
    environment variable SECRET_KEY_BASE is missing.
    You can generate one by calling: mix phx.gen.secret
    """

# ## Using releases (Elixir v1.9+)
#
# If you are doing OTP releases, you need to instruct Phoenix
# to start each relevant endpoint:
#
#     config :open_salary, OpenSalaryWeb.Endpoint, server: true
#
# Then you can assemble a release by calling `mix release`.
# See `mix help release` for more information.

config :open_salary, OpenSalaryWeb.Endpoint,
  url: [host: "open-salary-data.herokuapp.com", port: String.to_integer(System.fetch_env!("PORT"))],
  check_origin: ["//open-salary-data.herokuapp.com"],
  http: [
    port: String.to_integer(System.fetch_env!("PORT")),
    transport_options: [socket_opts: []]
  ],
  server: true,
  code_reloader: false,
  secret_key_base: secret_key_base
