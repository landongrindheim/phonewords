require_relative "phonewords/version"
require_relative "phonewords/parser"

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
