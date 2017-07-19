module Phonewords
  module NumberConversion
    class Lookup
      def initialize(pattern:, corpus: Corpus.new)
        @pattern = pattern
        @corpus = corpus
      end

      def find_matches
        raise NoInputError unless @pattern
        @corpus.select { |term| term.match(@pattern) }
      end
    end
  end
end
