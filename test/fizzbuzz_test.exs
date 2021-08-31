defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  test "FizzBuzz from 1 to 80" do
    assert FizzBuzz.run(1, 80) == :ok
  end
end
