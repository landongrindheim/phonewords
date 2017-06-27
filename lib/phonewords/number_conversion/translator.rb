module Phonewords
  module NumberConversion
    class Translator
      def initialize(number:, formatter: PhonewordsFormatter)
        @number    = number
        @formatter = formatter
      end

      def to_phonewords
        pattern = translate_to_pattern(@number)
        matches = matches_for_pattern(pattern)
        format_as_phonewords(matches)
      end

      private

      def translate_to_pattern(number)
        PatternBuilder.new(@number).build
      end

      def matches_for_pattern(pattern)
        Lookup.new(pattern: pattern).find_matches
      end

      def format_as_phonewords(matches)
        @formatter.new(matches).call
      end
    end
  end
end
