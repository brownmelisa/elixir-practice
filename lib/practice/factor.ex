defmodule Practice.Factor do
  def isPrime(num) do
    cond do
      num === 1 ->
        false
      num === 2 ->
        true
      true ->
        Enum.filter(Enum.to_list(2..div(num, 2)), fn x -> rem(num, x) == 0 end) 
        |> length == 0 
    end
  end

  def factorHelper(x, divisor, factorsList) do  
    cond do
      x === divisor -> 
        if isPrime(divisor) do
          factorsList = factorsList ++ [divisor]
        end
        factorsList
      rem(x, divisor) === 0 ->
        if isPrime(divisor) do
          factorsList = factorsList ++ [divisor]
        end
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
