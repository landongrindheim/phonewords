module Phonewords
  module NumberConversion
    class PatternBuilder
      NUMBER_TO_LETTER = {
        2 => "[abcABC]\s?",
        3 => "[defDEF]\s?",
        4 => "[ghiGHI]\s?",
        5 => "[jklJKL]\s?",
        6 => "[mnoMNO]\s?",
        7 => "[pqrsPQRS]\s?",
        8 => "[tuvTUV]\s?",
        9 => "[wxyzWXYZ]\s?",
        0 => "[[:space:]]+",
        1 => "1\s?",
      }

      def initialize(number)
        @source = sanitize_input(number)
      end

      def build
        %r{^#{translate}$}
      end

      private

      def sanitize_input(number)
        number.to_s.gsub(Patterns::VALID_SPECIAL_CHARACTER_PATTERN, "")
      end

      def translate
        @source.each_char.reduce("") do |pattern, char|
          pattern += NUMBER_TO_LETTER[char.to_i]
        end
      end
    end
  end
end
