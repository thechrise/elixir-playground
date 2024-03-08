defmodule Tutorials.Recursion.SumDigits do
  def upto(0), do: 0

  def upto(num) do
    num + upto(num - 1)
  end

  # Tail Recursive
  # - Less Memory
  # - Reuse Stack
  def upto_tail_rec(num, acc \\ 0)
  def upto_tail_rec(0, acc), do: acc

  def upto_tail_rec(num, acc) do
    upto_tail_rec(num - 1, acc + num)
  end
end
