defmodule PrimeFactors do

  def factors_for(number) do
    factorize(number, 2, [])
  end

  defp factorize(number, factor, prime_factors) when number < factor do
    prime_factors
  end

  defp factorize(number, factor, prime_factors) when rem(number, factor) == 0 do
    [factor|factorize(div(number, factor), factor, prime_factors)]
  end

  defp factorize(number, factor, prime_factors) do
    factorize(number, factor + 1, prime_factors)
  end


end
