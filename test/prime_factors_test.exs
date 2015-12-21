defmodule PrimeFactorsTest do
  use ExUnit.Case

  test "generate prime factorials" do
  	
  	test_values = [
  					{ 0,    []},
  					{ 2,    [2]},
  					{ 784,  [2,2,2,2,7,7]},
  					{ 1256, [2,2,2,157]},
  					{ 9,    [3,3] },
  					{ 8,    [2,2,2]}
  				  ]

  	Enum.each test_values, fn({candidate, factorials}) -> assert PrimeFactors.generate(candidate) == factorials end

  end


end
