defmodule ListFilter do
  require Integer

  def call(list) do
    list
    |> Enum.filter(fn list -> String.match?(list, ~r/[0-9]+/) end)
    |> Enum.map(fn element -> String.to_integer(element) end)
    |> Enum.filter(fn x -> Integer.is_odd(x) == true end)
    |> Enum.count()
  end
end
