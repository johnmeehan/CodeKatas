defmodule RomanNumeralsElixirTest do
  use ExUnit.Case
  doctest RomanNumeralsElixir

  test "converts arabic to roman numerals" do
    test_inputs = [
                    {0, ""},
                    {1, "I"},
                    {2, "II"},
                    {3, "III"},
                    {4, "IV"},
                    {5, "V"},
                    {6, "VI"},
                    {9, "IX"},
                    {10, "X"},
                    {40, "XL"},
                    {50, "L"},
                    {90, "XC"},
                    {100, "C"},
                    {500, "D"},
                    {1000, "M"},
                    {1800, "MDCCC"}
                  ]
    Enum.each test_inputs, fn({arabic, roman}) -> assert RomanNumeralsElixir.convert(arabic) == roman end
  end

  test "does not return incorrect numerals" do 
    refute(RomanNumeralsElixir.convert(4) == "IIII")
  end
end
