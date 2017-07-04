require "test_helper"

class TranslatorTest < Minitest::Test
  def test_to_phonewords_provides_matches
    perfect_as_digits = 7373328
    translator = Phonewords::NumberConversion::Translator.new(number: perfect_as_digits)
    result = translator.to_phonewords
    assert_includes result, "perfect"
  end

  def test_to_phonewords_does_not_list_misses
    not_perfect_as_digits = 5556792
    translator = Phonewords::NumberConversion::Translator.new(number: not_perfect_as_digits)
    result = translator.to_phonewords
    refute_includes result, "perfect"
  end
end
