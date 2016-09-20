use Mix.Config

config :kafka_ex,
  brokers: [{"ip-10-0-0-166.ec2.internal", 9092}],
  consumer_group: System.get_env("KAFKA_CONSUMER_GROUP") || "kafka_ex_2_local",
  disable_default_worker: false,
  sync_timeout: 1000 #Timeout used synchronous requests from kafka. Defaults to 1000ms.

config :maru, Aprb.Api.Root,
  http: [port: 4000]

config :aprb, Aprb.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "aprb_dev",
  hostname: "localhost",
  pool_size: 10
