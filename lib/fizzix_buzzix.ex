defmodule FizzixBuzzix do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  def handle_file_read({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&convert_and_evaluate_number/1)
  end

  def handle_file_read({:error, reason}), do: "Error reading the file: #{reason}"

  def convert_and_evaluate_number(list_elem) do
    number = String.to_integer(list_elem)
    evaluate_number(number)
    # This is the "regular way", looks messy
    # if rem(number, 3) == 0 do
    #   :fizzix
    # else
    #   if rem(number, 5) == 0 do
    #     :buzzix
    #   else
    #     number
    #   end
    # end

    # We can do with case as well
    # case rem(number, 3) do
    #   0 -> :fizzix
    #   _ -> number
    # end

    # case rem(number, 5) do
    #   0 -> :fizzix
    #   _ -> number
    # end
  end

  def evaluate_number(rem(number, 3) == 0), do: :fizzix
  def evaluate_number(rem(number, 3) == 0), do: :buzzix
end
