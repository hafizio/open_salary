defmodule OpenSalary.SalaryParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          salary_converted_max: float,
          salary_converted_min: float,
          cost_of_living_index: float,
        }

  defstruct [:salary_converted_max, :salary_converted_min, :cost_of_living_index]

  field(:salary_converted_max, 1, type: :float)
  field(:salary_converted_min, 2, type: :float)
  field(:cost_of_living_index, 3, type: :float)
end
