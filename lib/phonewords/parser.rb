require_relative "number_conversion"
require_relative "letter_conversion"
require_relative "validator"

module Phonewords
  class Parser
    def initialize(input, validator: Validator)
      @input     = input
      @validator = validator
    end

    def call
      validate(input)

      if number?(input)
        NumberConversion.from(input).to_phonewords
      else
        LetterConversion.from(input).to_phone_number
      end
    rescue => e
      e.message
    end

    private

    attr_reader :input

    def validate(input)
      @validator.new(input).validate
    end

    def number?(input)
      input.to_s.match(Patterns::NUMERICAL_PATTERN)
    end
  end
end
