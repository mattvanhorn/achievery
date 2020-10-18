defmodule AchieveryWeb.PagesControllerTest do
  use AchieveryWeb.ConnCase, async: true

  describe "GET /pages/roadmap" do
    test "renders the roadmap page", %{conn: conn} do
      conn = get(conn, Routes.page_path(conn, :roadmap))
      response = html_response(conn, 200)
      assert response =~ "<h1>Roadmap</h1>"
    end
  end

  describe "GET /pages/about" do
    test "renders the about page", %{conn: conn} do
      conn = get(conn, Routes.page_path(conn, :about))
      response = html_response(conn, 200)
      assert response =~ "<h1>About</h1>"
    end
  end
end
