# class RomanNumerals -- converts integers up to a few thousand to a string of roman numerals
class RomanNumerals
  ROMAN_CHUNKS = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }.freeze

  def self.generate(integer)
    raise ArgumentError unless integer.is_a? Integer
    raise ArgumentError unless integer.positive?

    ROMAN_CHUNKS.reduce('') do |output, (number, numeral)|
      whole, integer = integer.divmod(number)
      output << numeral * whole
    end
  end
end
