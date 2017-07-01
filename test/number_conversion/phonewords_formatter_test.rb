require "test_helper"

class PhonewordsFormatterTest < Minitest::Test
  def test_when_instantiated_with_nil
    no_words = nil
    formatter = Phonewords::NumberConversion::PhonewordsFormatter.new(no_words)
    result = formatter.call
    assert_equal result, "Sorry, no matches were found"
  end

  def test_when_instantiated_with_a_blank_string
    blank_words = ""
    formatter = Phonewords::NumberConversion::PhonewordsFormatter.new(blank_words)
    result = formatter.call
    assert_equal result, "Sorry, no matches were found"
  end

  def test_when_instantiated_with_one_word
    word = "phonewords"
    formatter = Phonewords::NumberConversion::PhonewordsFormatter.new(word)
    result = formatter.call
    expected_result = <<~RESULT
      The following words match your phone number:
       * phonewords
    RESULT
    assert_equal result, expected_result
  end

  def test_with_instantiated_with_multiple_words
    words = ["phone", "words"]
    formatter = Phonewords::NumberConversion::PhonewordsFormatter.new(words)
    result = formatter.call
    expected_result = <<~RESULT
      The following words match your phone number:
       * phone
       * words
    RESULT
    assert_equal result, expected_result

  end
end
