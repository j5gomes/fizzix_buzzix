defmodule FizzixBuzzix do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  defp handle_file_read({:ok, result}) do
    file_content =
      result
      |> String.split(",")
      |> Enum.map(&convert_and_evaluate_number/1)

    {:ok, file_content}
  end

  defp handle_file_read({:error, reason}), do: {:error, "Error reading the file: #{reason}"}

  defp convert_and_evaluate_number(list_elem) do
    list_elem
    |> String.to_integer()
    |> evaluate_number
  end

  defp evaluate_number(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzixbuzzix
  defp evaluate_number(number) when rem(number, 3) == 0, do: :fizzix
  defp evaluate_number(number) when rem(number, 5) == 0, do: :buzzix
  defp evaluate_number(number), do: number
end
