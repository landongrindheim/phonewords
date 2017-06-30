module Phonewords
  module NumberConversion
    class Corpus
      include Enumerable

      def each(&block)
        File.new(available_words_file).each_line(&block)
      end

      private

      def available_words_file
        return primary if File.exist? primary
        return secondary if File.exist? secondary
        raise 'No Dictionary Available'
      end

      def primary
        '/usr/share/dict/words'
      end

      def secondary
        '/usr/dict/words'
      end
    end
  end
end
