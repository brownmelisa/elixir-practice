defmodule Practice.Calc do
  def parse_float(text) do
    {num, _} = Float.parse(text)
    num
  end

  def calc(expr) do
    # This should handle +,-,*,/ with order of operations,
    # but doesn't need to handle parens.
    expr
    |> Code.eval_string() |> Tuple.to_list() |> hd()
    #|> String.split(~r/\s+/)
    #|> hd
    #|> parse_float
    #|> :math.sqrt()

    # Hint:
    # expr
    # |> split
    # |> tag_tokens  (e.g. [+, 1] => [{:op, "+"}, {:num, 1.0}]
    # |> convert to postfix
    # |> reverse to prefix
    # |> evaluate as a stack calculator using pattern matching
    
    # list2 = List.duplicate([:num, :op], div(num, 2)) |> List.flatten([:num])
    # klist = Enum.zip(list2, parse)
    # Keyword.get_values(klist, :num)
  end
end
