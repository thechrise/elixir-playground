defmodule Tutorials.Recursion.PrintDigits do
  # Base Case
  def upto(0), do: 0

  # Tail Recursion
  # def upto(nums) do
  #   IO.puts(nums)
  #   upto(nums - 1)
  # end

  # Head Recursion
  def upto(nums) do
    upto(nums - 1)
    # Return stage
    IO.puts(nums)
  end
end
