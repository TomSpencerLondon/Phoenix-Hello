# Pento

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix


#### Run local database postgres image
```bash
docker run -d -e POSTGRES_PASSWORD=postgres -p 5432:5432 postgres:11
```

#### Create database + Run Migrations
```bash
mix ecto.create
```

```bash
mix ecto.migrate
```

#### Run the server
```bash
 iex -S mix phx.server
```

#### Nice examples of live markdown
https://github.com/chriseyre2000/livebooks/blob/main/EventStorming.livemd
https://github.com/chriseyre2000/livebooks/blob/main/wardleymap.livemd