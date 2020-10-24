defmodule AchieveryWeb.FeatureCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL
      alias AchieveryWeb.Router.Helpers, as: Routes

      @endpoint AchieveryWeb.Endpoint
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Achievery.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(Achievery.Repo, {:shared, self()})
    end

    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(Achievery.Repo, self())
    {:ok, session} = Wallaby.start_session(metadata: metadata)
    {:ok, session: session}
  end
end
