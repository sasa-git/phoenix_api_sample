# PhoenixApiSample

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

## memo

```
$ docker-compose run web mix ecto.gen.migration create_addresses
$ docker-compose run web mix ecto.migrate 
```

iexを使ってシードデータを作成

```elixir
$ docker-compose run web iex -S mix
-> % docker-compose run web iex -S mix
Erlang/OTP 22 [erts-10.5.2] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:1] [hipe]

Compiling 1 file (.ex)
warning: unused alias Address
  lib/phoenix_api_sample_web/models/address.ex:4

Interactive Elixir (1.9.1) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> PhoenixApiSample.Repo.insert(%PhoenixApiSampleWeb.Address{name: "Tokyo"})
[debug] QUERY OK db=1.0ms decode=27.1ms queue=20.6ms idle=545.0ms
INSERT INTO `addresses` (`name`,`inserted_at`,`updated_at`) VALUES (?,?,?) ["Tokyo", ~N[2020-06-04 11:34:35], ~N[2020-06-04 11:34:35]]
{:ok,
 %PhoenixApiSampleWeb.Address{
   __meta__: #Ecto.Schema.Metadata<:loaded, "addresses">,
   id: 1,
   inserted_at: ~N[2020-06-04 11:34:35],
   name: "Tokyo",
   updated_at: ~N[2020-06-04 11:34:35]
 }}
iex(4)> PhoenixApiSampleWeb.Address |> PhoenixApiSample.Repo.get(1)
[debug] QUERY OK source="addresses" db=3.0ms idle=1483.2ms
SELECT a0.`id`, a0.`name`, a0.`inserted_at`, a0.`updated_at` FROM `addresses` AS a0 WHERE (a0.`id` = ?) [1]
%PhoenixApiSampleWeb.Address{
  __meta__: #Ecto.Schema.Metadata<:loaded, "addresses">,
  id: 1,
  inserted_at: ~N[2020-06-04 11:34:35],
  name: "Tokyo",
  updated_at: ~N[2020-06-04 11:34:35]
}

# nameから取得
iex(10)> PhoenixApiSampleWeb.Address |> PhoenixApiSample.Repo.get_by(name: "Tokyo")
[debug] QUERY OK source="addresses" db=0.7ms queue=1.1ms idle=1735.8ms
SELECT a0.`id`, a0.`name`, a0.`inserted_at`, a0.`updated_at` FROM `addresses` AS a0 WHERE (a0.`name` = ?) ["Tokyo"]
%PhoenixApiSampleWeb.Address{
  __meta__: #Ecto.Schema.Metadata<:loaded, "addresses">,
  id: 1,
  inserted_at: ~N[2020-06-04 11:34:35],
  name: "Tokyo",
  updated_at: ~N[2020-06-04 11:34:35]
}
```