require_relative "custom_errors"

module Phonewords
  class Validator
    def initialize(input)
      @input = input.to_s
    end

    def validate
      raise CustomErrors::MixedInputError if has_mixed_input?
      raise CustomErrors::InputTooLongError if exceeds_max_length?
      raise CustomErrors::SpecialCharacterError if contains_special_characters?
    end

    private

    attr_reader :input

    def has_mixed_input?
      input.match(Patterns::MIXED_INPUT_PATTERN)
    end

    # TODO - this is simplistic, count only alphabetical characters
    def exceeds_max_length?
      input.match(Patterns::ALPHABETICAL_PATTERN) && input.length > 15
    end

    def contains_special_characters?
      input.match(Patterns::INVALID_SPECIAL_CHARACTER_PATTERN)
    end
  end
end
