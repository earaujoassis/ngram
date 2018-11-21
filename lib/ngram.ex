defmodule Ngram do
  defp _each_cons(list,  n, result) when length(list) < n do
    Enum.reverse result
  end

  defp _each_cons(list = [_ | tail], n, result) do
    _each_cons(tail, n, [Enum.take(list, n)|result])
  end

  def tokenize(str) do
    grams = str |>
      String.split(" ") |>
      Enum.map(fn s -> String.replace(s, ~r/[,.!?]/, "") end)
    Enum.map(1..length(grams), fn n -> _each_cons(grams, n, []) end) |>
      Enum.concat |>
      Enum.map(fn s -> Enum.join(s, " ") end)
  end
end
