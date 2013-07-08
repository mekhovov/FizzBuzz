# FizzBuzz
# program printing numbers from 1 to 100 but:
#  - "FIZZ" instead of multiples of 3
#  - "BUZZ" instead of multiples of 5
#  - "FIZZ BUZZ" instead of multiples of 3 and 5

class FizzBuzz
  # result (FIZZed & BUZZed array)
  attr_reader :fizzed_buzzed

  # init @numbers - initial values, @fizzed_buzzed - result
  def initialize(numbers)
    @numbers = numbers
    @fizzed_buzzed = fizz_buzz_it
  end

  # prints result to console
  def show
    puts @fizzed_buzzed.join ', '
  end

  # check and return "FIZZ" if number multiples of 3
  def fizz number
    "FIZZ" if number % 3 == 0
  end

  # check and return "BUZZ" if number multiples of 5
  def buzz number
    "BUZZ" if number % 5 == 0
  end

  private

    # process all items, FIZZ and BUZZ ones, unless returns number
    def fizz_buzz_it
      @numbers.map do |number|
        res = [fizz(number), buzz(number)]
        res.any? ? res.join(' ').strip : number
      end
    end

end

