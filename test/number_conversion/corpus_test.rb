require "test_helper"

class CorpusTest < Minitest::Test
  def test_it_handles_a_user_given_words_file
    fake_file = Minitest::Mock.new
    fake_file.expect(:each_line, "This\n is\n my\n list\n")
    File.stub(:new, fake_file) do
      assert Phonewords::NumberConversion::Corpus.new(fake_file).each
    end
    fake_file.verify
  end

  def test_it_implements_all_enumerable_methods
    corpus = Phonewords::NumberConversion::Corpus.new

    Enumerable.public_instance_methods.each do |enum_method|
      assert_respond_to corpus, enum_method
    end
  end
end
