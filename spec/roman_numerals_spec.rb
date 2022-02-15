require 'roman_numerals'

RSpec.describe RomanNumerals, ".generate" do
  context "with an input of 1" do
    it "outputs the string 'I'" do
      expect(RomanNumerals.generate(1)).to eq "I"
    end
  end
end
