defmodule Achievery.Repo do
  use Ecto.Repo,
    otp_app: :achievery,
    adapter: Ecto.Adapters.Postgres
end
