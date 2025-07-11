defmodule FizzixBuzzixTest do
  use ExUnit.Case
  doctest FizzixBuzzix

  test "greets the world" do
    assert FizzixBuzzix.hello() == :banana
  end
end
