defmodule OpenSalaryWeb.PageController do
  use OpenSalaryWeb, :controller

  alias OpenSalary.ModelPredictor, as: ML
  alias OpenSalary.SalaryParams, as: Salary

  def index(conn, _params) do
    render(conn, "index.html")
  end

  @spec show(Plug.Conn.t(), map) :: Plug.Conn.t()
  def show(conn, %{
        "salary_converted_max" => salary_converted_max,
        "salary_converted_min" => salary_converted_min,
        "cost_of_living_index" => cost_of_living_index,
      }) do
    with {salary_converted_max, _} <- Float.parse(salary_converted_max),
         {salary_converted_min, _} <- Float.parse(salary_converted_min),
         {cost_of_living_index, _} <- Float.parse(cost_of_living_index) do
      salary_params = %Salary{
        salary_converted_max: salary_converted_max,
        salary_converted_min: salary_converted_min,
        cost_of_living_index: cost_of_living_index,
      }

      class = ML.predict([Salary.encode(salary_params)])

      conn
      |> put_flash(:info, "Predicted salary class: #{class}")
      |> render("index.html")
    else
      _error ->
        conn
        |> put_flash(:error, "Invalid parameters!")
        |> render("index.html")
    end
  end
end
