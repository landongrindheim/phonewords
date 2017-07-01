require "test_helper"

class CorpusTest < Minitest::Test
  def test_it_implements_all_enumerable_methods
    corpus = Phonewords::NumberConversion::Corpus.new

    Enumerable.public_instance_methods.each do |enum_method|
      assert_respond_to corpus, enum_method
    end
  end
end
