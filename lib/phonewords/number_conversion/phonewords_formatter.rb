module Phonewords
  module NumberConversion
    class PhonewordsFormatter
      def initialize(words)
        @words = words
      end

      def call
        if phonewords.count > 0
          results
        else
          no_results
        end
      end

      private

      def phonewords
        Array(@words).reject(&:empty?).map(&:chomp)
      end

      def results
        <<~RESULTS
          The following words match your phone number:
           * #{Array(@words).join(separator)}
        RESULTS
      end

      def separator
        "\n * "
      end

      def no_results
        "Sorry, no matches were found"
      end
    end
  end
end
