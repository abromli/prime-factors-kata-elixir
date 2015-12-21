defmodule PrimeFactors do

    def generate(number) when number <= 1 do
    		[]
    end

    def generate(number) when rem(number,2) == 0 do
    	[2 | generate(div(number,2))]  # even number calculations
    end 

    def generate(number) do

    	generate(number,3)  # run the odd number calculations, starting from 3

    end

    def generate(number, idx) do 
    	
    	#for composite numbers
    	if idx <= :math.sqrt(number) do 

    		if rem(number,idx) == 0 do  

	    		[idx | generate(div(number,idx), idx )]  
    
	    	else

	    		generate(number, idx + 2 ) 

    		end

    	#for prime numbers
    	else

    		[ number ]  

	    end
    end


end
