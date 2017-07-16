module Phonewords
  module CustomErrors
    class NoInputError < StandardError
      def message
        <<~ERROR
          Input was expected, but none was given.
        ERROR
      end
    end
    class MixedInputError < StandardError
      def message
        <<~ERROR
          Input must be all alphabetical characters or
          numerical characters with phone number-specific
          special characters "(", ")", "-" or " ".
        ERROR
      end
    end

    class InputTooLongError < StandardError
      def message
        <<~ERROR
          Input meant to be translated to a phone number
          cannot exceed 15 characters.
        ERROR
      end
    end

    class SpecialCharacterError < StandardError
      def message
        <<~ERROR
          Input can only contain alphabetical (A-Z),
          numerical (0-9) or phone number-specific
          special characters ("(", ")", "-" or " ").
        ERROR
      end
    end
  end
end
