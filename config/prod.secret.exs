use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :heroku_test_app, HerokuTestApp.Endpoint,
secret_key_base: System.get_env("SECRET_KEY_BASE") #"aKSaXS5/ntWbu8j8qkoU9mpKBg2zvaDWvQUoGK7Jnd4YK7Xu5B+sj7xBF8u3SnIG"

# Configure your database
config :heroku_test_app, HerokuTestApp.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  size: 20
  # username: "postgres",
  # password: "postgres",
  # database: "heroku_test_app_prod",
  # pool_size: 20
