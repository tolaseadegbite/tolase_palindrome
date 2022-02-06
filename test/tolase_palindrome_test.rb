# frozen_string_literal: true

require "test_helper"

class TolasePalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::TolasePalindrome::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "raCEcAr".palindrome?
  end

  def test_palindrome_with_punctuations
    assert "Madam, I'm Adam!".palindrome?
  end

  def test_integer_palindrome
    assert "123454321".palindrome?
  end

  def test_integer_non_palidrome
    refute "12345".palindrome?
  end

  # def test_letters
  #   assert_equal "MadamImAdam", "Madam, I'm Adam!".letters
  # end
end
