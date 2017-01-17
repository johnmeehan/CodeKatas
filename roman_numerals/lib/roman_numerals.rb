# RomanNumerals converter code kata.
class RomanNumerals
  NUMERALS = {
    'M' => 1000,
    'D' => 500,
    'C' => 100,
    'XC' => 90,
    'L' => 50,
    'XL' => 40,
    'X' => 10,
    'IX' => 9,
    'V' => 5,
    'IV' => 4,
    'I' => 1
  }

  def convert_to_numerals(num)
    result = ''
    NUMERALS.each do |numeral, arabic|
      while num >= arabic
        result += numeral
        num -= arabic
      end
    end
    result
  end
end
