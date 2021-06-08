defmodule OpenSalary.ModelPredictor do
  @moduledoc false

  alias OpenSalary.PythonHelper, as: Helper

  @path 'priv/model/'

  def predict(args) do
    call_python(:classifier, :predict_model, args)
  end

  defp call_python(module, func, args) do
    path = List.to_string([:code.priv_dir(:open_salary), '/model'])

    # pid = Helper.py_instance(Path.absname(@path))
    pid = Helper.py_instance(Path.absname(path))
    result = Helper.py_call(pid, module, func, args)

    pid
    |> Helper.py_stop()

    result
  end
end
