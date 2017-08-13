module Phonewords
  module NumberConversion
    class Corpus
      include Enumerable

      def initialize(words_file=default_words_file)
        @words_file = words_file
      end

      def each(&block)
        File.new(@words_file).each_line(&block)
      end

      private

      def default_words_file
        return primary if File.exist? primary
        return secondary if File.exist? secondary
        raise "No Dictionary Available"
      end

      def primary
        "/usr/share/dict/words"
      end

      def secondary
        "/usr/dict/words"
      end
    end
  end
end
