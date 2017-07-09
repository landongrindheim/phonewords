module Phonewords
  module LetterConversion
    class Translator
      def initialize(letters:, formatter: PhoneNumberFormatter)
        @letters = letters.to_s
        @formatter= formatter
      end

      def to_phone_number
        @formatter.new(conversion).call
      end

      private

      def conversion
        @letters.downcase.gsub(/[a-z]/, Key::LETTER_TO_NUMBER)
      end
    end
  end
end
