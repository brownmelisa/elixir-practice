defmodule Practice.Factor do
  def factorHelper(x, divisor, factorsList) do  
    cond do
      x === divisor -> 
        factorsList = factorsList ++ [divisor]
        factorsList
      rem(x, divisor) === 0 ->
        factorsList = factorsList ++ [divisor]
        factorHelper(div(x, divisor), divisor, factorsList)
      true -> 
        factorHelper(x, divisor + 1, factorsList)
    end
  end

  def findFactors(x) do
    divisor = 2
    factorsList = []
    factorHelper(x, divisor, factorsList) 
  end
  
end
