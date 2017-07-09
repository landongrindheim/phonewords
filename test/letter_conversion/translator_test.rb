require "test_helper"

class TranslatorTest < Minitest::Test
  def test_it_formats_lowercase_perfect_as_738_3328
    perfect = "perfect"
    translator = Phonewords::LetterConversion::Translator.new(letters: perfect)
    result = translator.to_phone_number

    assert_equal result, "737-3328"
  end

  def test_it_formats_uppercase_perfect_as_738_3328
    perfect = "PERFECT"
    translator = Phonewords::LetterConversion::Translator.new(letters: perfect)
    result = translator.to_phone_number

    assert_equal result, "737-3328"
  end

  def test_it_delegates_formatting_to_formatter
    mock_formatter_klass = Minitest::Mock.new
    mock_formatter = Minitest::Mock.new

    mock_formatter_klass.expect(:new, mock_formatter, [String])
    mock_formatter.expect(:call, :foo)

    translator = Phonewords::LetterConversion::Translator.new(
      letters: "letters",
      formatter: mock_formatter_klass
    )
    translator.to_phone_number

    mock_formatter.verify
    mock_formatter_klass.verify
  end
end
