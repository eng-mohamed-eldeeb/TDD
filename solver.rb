class Solver
  def factorial(number)
    raise Exception, 'Error: Your number should be positive.' if number.negative?
    return 1 if number.zero?

    number * factorial(number - 1)
  end

  def reverse(word)
    word.reverse
  end

  def fizz_buzz(number)
    return 'fizzbuzz' if (number % 15).zero?
    return 'fizz' if (number % 3).zero?
    return 'buzz' if (number % 5).zero?

    number
  end
end
