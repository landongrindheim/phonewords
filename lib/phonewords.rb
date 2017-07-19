require_relative "phonewords/parser"
require_relative "phonewords/letter_conversion"
require_relative "phonewords/number_conversion"
require_relative "phonewords/version"

module Phonewords
  def self.start
    puts "what would you like to translate?"
    print "> "

    STDIN.each_line do |line|
      output = Parser.new(line.chomp).call
      puts output
      print "> "
    end
  end

  at_exit { "bye" }
end
