defmodule FizzixBuzzix do
  # Using a case as the other languages use
  # def build(file_name) do
  #   case File.read(file_name) do
  #     {:ok, result} -> result
  #     {:error, reason} -> reason
  #   end
  # end

  # The elixir way - Using an function with pattern matching -
  def build(file_name) do
    # The usual way
    # file = File.read(file_name)
    # handle_file_read(file)

    # The elixir way
    file_name |> File.read() |> handle_file_read()
  end

  def handle_file_read({:ok, result}), do: result
  def handle_file_read({:error, reason}), do: reason
end
