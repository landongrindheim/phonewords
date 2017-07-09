require 'test_helper'

class PhonewordsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Phonewords::VERSION
  end
end
