defmodule Practice.Palindrome do

  def checkPalindrome(pstring) do
    # remove white spaces and put string in all caps
    trimmedString = pstring |> String.replace(" ", "") |> String.upcase()
    
    # get the length/2 of the string to the nearest whole number
    num = trimmedString |> String.length() |> div(2)

    # compare the first half and the reverse of the second half
    var1 = trimmedString |> String.slice(0..num-1)
    var2 = trimmedString |> String.slice(-num..-1) |> String.reverse() 
    var1 === var2
  end

end
