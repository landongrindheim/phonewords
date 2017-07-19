require 'test_helper'

class LookupTest < Minitest::Test
  def test_find_matches_returns_words_matching_pattern
    pattern = /phone/
    lookup = Phonewords::NumberConversion::Lookup.new(pattern: pattern)
    result = lookup.find_matches
    assert_includes result.map(&:chomp), "phone"
  end

  def test_find_matches_returns_multiple_matches
    pattern = /words/
    lookup = Phonewords::NumberConversion::Lookup.new(pattern: pattern)
    result = lookup.find_matches
    assert_includes result.map(&:chomp), "wordsmith"
    assert_includes result.map(&:chomp), "backswordsman"
    assert_includes result.map(&:chomp), "swordsman"
  end

  def test_find_matches_does_not_return_non_matching_strings
    pattern = /phone/
    lookup = Phonewords::NumberConversion::Lookup.new(pattern: pattern)
    result = lookup.find_matches
    refute_includes result.map(&:chomp), "words"
  end

  def test_it_raises_NoInputError_if_lacking_input
    lookup = Phonewords::NumberConversion::Lookup.new(pattern: nil)

    assert_raises(Phonewords::NoInputError) { lookup.find_matches }
  end
end
