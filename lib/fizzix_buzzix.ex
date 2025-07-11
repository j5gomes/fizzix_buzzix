defmodule FizzixBuzzix do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  def handle_file_read({:ok, result}) do
    result
    |> String.split(",")
    # An regular anonymous function
    # |> Enum.map(fn number -> String.to_integer(number) end)
    # An shortcut for the regular anonymous function
    # 1. We can pass the first param as &1
    # |> Enum.map(&String.to_integer(&1))
    # 2. We can pass the first param as the arity of the function
    |> Enum.map(&String.to_integer/1)
  end

  def handle_file_read({:error, reason}), do: "Error reading the file: #{reason}"
end
