module Phonewords
  module NumberConversion
    class PhonewordsFormatter
      def initialize(words)
        @words = words
      end

      def call
        if phonewords_count > 0
          results
        else
          no_results_found
        end
      end

      private

      def phonewords_count
        Array(@words).size
      end

      def results
        <<~RESULTS
          The following words match your phone number:
           * #{Array(@words).join(" * ")}
        RESULTS
      end

      def no_results_found
        "Sorry, no matches were found"
      end
    end
  end
end
