require "test_helper"

class PatternBuilderTest < Minitest::Test
  def test_it_builds_a_pattern_for_one
    pattern_builder = Phonewords::NumberConversion::PatternBuilder.new(1)
    result = pattern_builder.build
    assert_equal result, /^1 ?$/
  end

  def test_it_builds_a_pattern_for_two
    pattern_builder = Phonewords::NumberConversion::PatternBuilder.new(2)
    result = pattern_builder.build
    assert_equal result, /^[abcABC] ?$/
  end

  def test_it_builds_a_pattern_for_three
    pattern_builder = Phonewords::NumberConversion::PatternBuilder.new(3)
    result = pattern_builder.build
    assert_equal result, /^[defDEF] ?$/
  end

  def test_it_builds_a_pattern_for_four
    pattern_builder = Phonewords::NumberConversion::PatternBuilder.new(4)
    result = pattern_builder.build
    assert_equal result, /^[ghiGHI] ?$/
  end

  def test_it_builds_a_pattern_for_five
    pattern_builder = Phonewords::NumberConversion::PatternBuilder.new(5)
    result = pattern_builder.build
    assert_equal result, /^[jklJKL] ?$/
  end

  def test_it_builds_a_pattern_for_six
    pattern_builder = Phonewords::NumberConversion::PatternBuilder.new(6)
    result = pattern_builder.build
    assert_equal result, /^[mnoMNO] ?$/
  end

  def test_it_builds_a_pattern_for_seven
    pattern_builder = Phonewords::NumberConversion::PatternBuilder.new(7)
    result = pattern_builder.build
    assert_equal result, /^[pqrsPQRS] ?$/
  end

  def test_it_builds_a_pattern_for_eight
    pattern_builder = Phonewords::NumberConversion::PatternBuilder.new(8)
    result = pattern_builder.build
    assert_equal result, /^[tuvTUV] ?$/
  end

  def test_it_builds_a_pattern_for_nine
    pattern_builder = Phonewords::NumberConversion::PatternBuilder.new(9)
    result = pattern_builder.build
    assert_equal result, /^[wxyzWXYZ] ?$/
  end

  def test_it_builds_a_pattern_for_zero
    pattern_builder = Phonewords::NumberConversion::PatternBuilder.new(0)
    result = pattern_builder.build
    assert_equal result, /^[[:space:]]+$/
  end

  def test_it_build_pattern_for_multiple_numbers_at_a_time
    pattern_builder = Phonewords::NumberConversion::PatternBuilder.new(283)
    result = pattern_builder.build
    assert_equal result, /^[abcABC] ?[tuvTUV] ?[defDEF] ?$/
  end

  def test_it_handles_nil
    pattern_builder = Phonewords::NumberConversion::PatternBuilder.new(nil)
    result = pattern_builder.build
    assert_equal result, /^$/
  end
end
