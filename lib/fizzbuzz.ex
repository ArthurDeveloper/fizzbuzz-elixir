defmodule FizzBuzz do
  def run(first_number, last_number) do
    Enum.each(first_number..last_number, fn(n) -> n
                                                  |> fizzbuzz
                                                  |> IO.puts
                                         end)
  end

  def fizzbuzz(number) do
      cond do
        isDivisibleBy3(number) and isDivisibleBy5(number) -> "FizzBuzz"
        isDivisibleBy3(number) -> "Fizz"
        isDivisibleBy5(number) -> "Buzz"
        true -> number
      end
  end

  defp isDivisibleBy3(number) do
    rem(number, 3) == 0
  end

  defp isDivisibleBy5(number) do
    rem(number, 5) == 0
  end
end
