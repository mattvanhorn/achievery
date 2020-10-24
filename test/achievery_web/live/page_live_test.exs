defmodule AchieveryWeb.PageLiveTest do
  use AchieveryWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")
    assert disconnected_html =~ "Welcome to Achievery"
    assert render(page_live) =~ "Welcome to Achievery"
  end
end
