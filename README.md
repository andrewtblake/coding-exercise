# Roman Numerals exercise

- **Stretch goal:** Setup a GitHub Actions pipeline to automate the running of your tests

## Method

- we use an approach found here: https://stackoverflow.com/questions/26092510/roman-numerals-in-ruby
- see also https://ruby-doc.org/core-2.7.3/Numeric.html#method-i-divmod

Using the following constant defined inside the RomanNumerals class

```ruby
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
  }
```

We apply `reduce` on that hash, and starting with the input integer,
for each element apply `divmod` of the element's key to it. However
many whole times the key fits into the integer, we push that many of
the corresponding numerals onto the output string, then replace the
input integer with the remainder part to repeat for the next chunk.

## Required dependencies

In order to run the tests for this exercise, ensure you have the following installed:

- Make
- RSpec
- Ruby 2.7

## Setup

To get the project setup and ready to run tests, please run:

```sh
make
```

## Running tests

To run tests and see the test runner output, run:

```sh
make test
```
