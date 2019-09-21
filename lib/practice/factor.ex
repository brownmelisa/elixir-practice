defmodule Practice.Factor do
  def parse_int(text) do
    if !is_integer(text) do
      {num, _} = Integer.parse(text)
      num
    else 
      text
    end  
  end
    
  def factorHelper(y, divisor, factorsList) do  
    cond do
      y === divisor -> 
        factorsList = factorsList ++ [divisor]
        factorsList
      rem(y, divisor) === 0 ->
        factorsList = factorsList ++ [divisor]
        factorHelper(div(y, divisor), divisor, factorsList)
      true -> 
        factorHelper(y, divisor + 1, factorsList)
    end
  end

  def findFactors(x) do
    divisor = 2
    factorsList = []
    x_int = parse_int(x)
    factorHelper(x_int, divisor, factorsList) 
    #"TEST RESULT"
  end

end
