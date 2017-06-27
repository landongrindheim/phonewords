module Phonewords
  module LetterConversion
    class PhoneNumberFormatter
      def initialize(phone_number)
        @phone_number = phone_number
      end

      def call
        case phone_number.length
        when 11..15
          country_code_area_code_and_local_number
        when 10
          area_code_and_local_number
        when 7
          local_number
        else
          "#{phone_number}"
        end
      end

      private

      attr_reader :phone_number

      def country_code_area_code_and_local_number
        "#{country_code} #{area_code_and_local_number}"
      end

      def area_code_and_local_number
        "(#{area_code}) #{local_number}"
      end

      def local_number
        "#{station}-#{exchange}"
      end

      def country_code
        "#{phone_number[0..-11]}"
      end

      def area_code
        "#{phone_number[-10..-8]}"
      end

      def station
        "#{phone_number[-7..-5]}"
      end

      def exchange
        "#{phone_number[-4..-1]}"
      end
    end
  end
end
