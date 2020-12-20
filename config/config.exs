use Mix.Config

config :nostrum,
  num_shards: :auto,
  token: System.get_env("DISCORD_TOKEN")
