require 'spec_helper'

describe RomanNumerals do
  let(:converter) { RomanNumerals.new }

  describe '#convert' do
    [
      ['I', 1],
      ['II', 2],
      ['III', 3],
      ['IV', 4],
      ['V', 5],
      ['VI', 6],
      ['IX', 9],
      ['X', 10],
      ['XIV', 14],
      ['XL', 40],
      ['L', 50],
      ['XC', 90],
      ['C', 100],
      ['D', 500],
      ['M', 1000],
      ['MDCCC', 1800]
    ].each do |numeral, arabic|
      it "#{arabic} to  #{numeral}" do
        expect(converter.convert_to_numerals(arabic)).to eq numeral
      end
    end
  end
end
