defmodule RomanNumeralsElixir do
  @moduledoc """
  Documentation for RomanNumeralsElixir.
  """

  @doc """
  list of tuples with the arabic and roman numeral for each.
  """
  def numerals do
    [{1000, "M"},{500, "D"},{100, "C"},{90, "XC"},{50, "L"},{40, "XL"},{10, "X"},{9, "IX"},{5, "V"},{4, "IV"},{1,"I"}]
  end

  @doc """
  Converts numbers to roman numerals.
  ### Examples
    iex> RomanNumeralsElixir.convert(49)
    "XLIX"
    iex> RomanNumeralsElixir.convert(2017)
    "MMXVII"
  """
  def convert(num), do: convert(num, numerals())

  defp convert(0, _numerals), do: ""
  defp convert(num, [{arabic, roman} | tail]) when num >= arabic do
    roman <> convert(num - arabic, [{arabic, roman} | tail])
  end
  defp convert(num, [{arabic, _roman} | tail]) when num < arabic do
    convert(num, tail)
  end
  
end
