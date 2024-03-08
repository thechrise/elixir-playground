defmodule Tutorials.Recursion.ReverseNum do
  # num = 123 -> 321
  # acc = 0
  # loop:
  def of(num, acc \\ 0)
  def of(0, acc), do: acc

  def of(num, acc) do
    new_num = div(num, 10)
    new_acc = acc * 10 + rem(num, 10)
    of(new_num, new_acc)
  end
end
