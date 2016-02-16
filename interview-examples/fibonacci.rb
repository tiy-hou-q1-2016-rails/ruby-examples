# write a method that returns the nth number in a sequence

# 1, 1, 2, 3, 5, 8
# => fibonacci(1) => 1
# => fibonacci(2) => 1
# => fibonacci(3) => 2
# => fibonacci(5) => 5
# => fibonacci(6) => 8

def fibonacci(position)
  if (position == 1 || position == 2)
    1
  else
    fibonacci(position-1) + fibonacci(position-2)
  end
end

require 'minitest'
require 'minitest/autorun'

class FibonacciTest < Minitest::Test

  def test_first_two_numbers
    assert_equal 1, fibonacci(1)
    assert_equal 1, fibonacci(2)
  end

  def test_third_is_sum_of_1_and_tw
    assert_equal 2, fibonacci(3)
  end

end
