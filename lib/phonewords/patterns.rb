module Phonewords
  module Patterns
    ALPHABETICAL_PATTERN = /^[[:alpha:]]+[[:blank:]]*[[:alpha:]]+$/
    NUMERICAL_PATTERN = /^[[:digit:]]+\.?[[:digit:]]+$/
    MIXED_INPUT_PATTERN = /^[[:alpha:]]+[[:digit:]]+|[[:digit:]]+[[:alpha:]]+$/
    INVALID_SPECIAL_CHARACTER_PATTERN = /[^[[:alnum:]][[:blank:]]\(\)\-]/
    VALID_SPECIAL_CHARACTER_PATTERN = /[\(\)\-\s]/
  end
end
