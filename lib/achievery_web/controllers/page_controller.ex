defmodule AchieveryWeb.PageController do
  use AchieveryWeb, :controller

  def roadmap(conn, _params) do
    render(conn, "roadmap.html")
  end

  def about(conn, _params) do
    render(conn, "about.html")
  end
end
