defmodule Practice.Palindrome do

  def checkPalindrome(pstring) do
    num = pstring |> String.length() |> div(2)
    var1 = pstring |> String.slice(0..num-1) |> String.upcase()
    var2 = pstring |> String.slice(-num..-1) |> String.upcase() |> String.reverse() 
    var1 === var2
  end

end
