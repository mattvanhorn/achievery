defmodule AchieveryWeb.UserVisitsHomepageTest do
  use AchieveryWeb.FeatureCase, async: true

  test "user can visit homepage", %{session: session} do
    session
    |> visit("/")
    |> assert_has(Query.css("h1", text: "Welcome to Achievery"))
  end
end
