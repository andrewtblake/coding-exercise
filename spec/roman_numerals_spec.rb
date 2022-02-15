require 'roman_numerals'

RSpec.describe RomanNumerals, '.generate' do
  context 'with a non-integer input' do
    it 'raises an ArgumentError' do
      expect{ RomanNumerals.generate('M') }.to raise_error(ArgumentError)
    end
  end

  context 'with zero as input' do
    it 'raises an ArgumentError' do
      expect{ RomanNumerals.generate(0) }.to raise_error(ArgumentError)
    end
  end

  context 'with negative input' do
    it 'raises an ArgumentError' do
      expect{ RomanNumerals.generate(-100) }.to raise_error(ArgumentError)
    end
  end

  context 'with an input of 1' do
    it "outputs the string 'I'" do
      expect(RomanNumerals.generate(1)).to eq 'I'
    end
  end

  context 'with an input of 1983' do
    it "outputs the string 'MCMLXXXIII'" do
      expect(RomanNumerals.generate(1983)).to eq 'MCMLXXXIII'
    end
  end
end
