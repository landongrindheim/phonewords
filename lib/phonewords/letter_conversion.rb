require_relative "letter_conversion/key"
require_relative "letter_conversion/phone_number_formatter"
require_relative "letter_conversion/translator"

module Phonewords
  module LetterConversion
    def self.from(letters)
      Translator.new(letters: letters)
    end
  end
end
