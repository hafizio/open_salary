defmodule OpenSalaryWeb.SalaryController do
  use OpenSalaryWeb, :controller

  def new(conn, _params) do
    render(conn, "new.html")
  end
end
