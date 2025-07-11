defmodule FizzixBuzzixTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expected_response =
        {:ok, [1, 2, :fizzix, 4, :buzzix, :fizzix, :buzzix, :fizzixbuzzix, :buzzix]}

      assert FizzixBuzzix.build("numbers.txt") == expected_response
    end

    test "when an invalid file is provided, returns an error" do
      expected_response =
        {:error, "Error reading the file: enoent"}

      assert FizzixBuzzix.build("invalid.txt") == expected_response
    end
  end
end
