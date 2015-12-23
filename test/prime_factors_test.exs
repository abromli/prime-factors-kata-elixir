defmodule PrimeFactorsTest do
  use ExUnit.Case

  test "generate prime factorials" do
  	
  	test_values = [
  					{ 0,    []},
  					{ 2,    [2]},
  					{ 784,  [2,2,2,2,7,7]},
  					{ 1256, [2,2,2,157]},
  					{ 9,    [3,3] },
  					{ 8,    [2,2,2]},
  					{ 901255, [5, 17, 23, 461]}
  				  ]

  	Enum.each test_values, fn({candidate, factorials}) -> assert PrimeFactors.factors_for(candidate) == factorials end

  end


end
