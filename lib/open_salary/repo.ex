defmodule OpenSalary.Repo do
  use Ecto.Repo,
    otp_app: :open_salary,
    adapter: Ecto.Adapters.Postgres
end
