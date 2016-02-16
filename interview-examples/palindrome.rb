# write a method that returns if a string
# is a palindrome or not


def palindrome(word)
  if word.downcase == word.downcase.reverse
    true
  else
    false
  end
end

# def palindrome(word)
#   word.downcase == word.downcase.reverse
# end

require 'minitest'
require 'minitest/autorun'

class PalindromTest < Minitest::Test
  def test_the_abba
    # assert palindrome("abba") == true
    assert_equal true, palindrome("abba")
  end

  def test_the_abba_propercase
    assert palindrome("Abba") == true
  end

  def test_the_racecar
    assert palindrome("racecar") == true
  end

  def test_jwo_is_not
    assert palindrome("jwo") == false
  end

end
