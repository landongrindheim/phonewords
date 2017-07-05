require "test_helper"
require "phonewords"

class PhoneNumberFormatterTest < Minitest::Test
  def test_it_formats_11_digit_numbers
    unformatted_number = "18005555555"
    formatter = Phonewords::LetterConversion::PhoneNumberFormatter.new(unformatted_number)
    result = formatter.call
    assert_equal result, "1 (800) 555-5555"
  end

  def test_it_formats_15_digit_numbers
    unformatted_number = "123456789012345"
    formatter = Phonewords::LetterConversion::PhoneNumberFormatter.new(unformatted_number)
    result = formatter.call
    assert_equal result, "12345 (678) 901-2345"
  end

  def test_it_formats_10_digit_numbers
    unformatted_number = "1234567890"
    formatter = Phonewords::LetterConversion::PhoneNumberFormatter.new(unformatted_number)
    result = formatter.call
    assert_equal result, "(123) 456-7890"
  end

  def test_it_formats_7_digit_numbers
    unformatted_number = "1234567"
    formatter = Phonewords::LetterConversion::PhoneNumberFormatter.new(unformatted_number)
    result = formatter.call
    assert_equal result, "123-4567"
  end

  def test_it_returns_numbers_of_fewer_than_7_digits_unformatted
    unformatted_number = "123456"
    formatter = Phonewords::LetterConversion::PhoneNumberFormatter.new(unformatted_number)
    result = formatter.call
    assert_equal result, "123456"
  end

  def test_it_returns_numbers_of_more_than_15_digits_unformatted
    unformatted_number = "1234567890123456"
    formatter = Phonewords::LetterConversion::PhoneNumberFormatter.new(unformatted_number)
    result = formatter.call
    assert_equal result, "1234567890123456"
  end

  def test_it_handles_numeric_input
    integer = 1234567
    formatter = Phonewords::LetterConversion::PhoneNumberFormatter.new(integer)
    result = formatter.call
    assert_equal result, "123-4567"
  end

  def test_it_returns_an_empty_string_for_nil_input
    formatter = Phonewords::LetterConversion::PhoneNumberFormatter.new(nil)
    result = formatter.call
    assert_equal result, ""

  end
end
