use Mix.Config

config :nostrum,
  num_shards: :auto,
  token: System.get_env("DISCORD_TOKEN")

# Disable startup warning about missing Goon executable
config :porcelain, goon_warn_if_missing: false
