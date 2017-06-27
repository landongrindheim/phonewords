require_relative "number_conversion/corpus"
require_relative "number_conversion/lookup"
require_relative "number_conversion/pattern_builder"
require_relative "number_conversion/phonewords_formatter"
require_relative "number_conversion/translator"
require_relative "patterns"

module Phonewords
  module NumberConversion
    def self.from(number)
      Translator.new(number: number)
    end
  end
end
