require './lib/english_alphabetable'
class EnglishTranslator

  include EnglishAlphabet

  attr_reader :file_read, :english_message

  def initialize
    @english_message = [""]
  end

  def format
    lines = @file_reader.split("\n")
    amount_of_lines = lines.length
    
    new_line = lines.map do |line|
      line.slice!(0..1)
    end
    character = new_lines[0..2]

    require "pry";binding.pry
  end



  def translate_to_english(file)
    file_read = file
    @english_message = file_read.chars.each_slice(3)
    i = 0

  end
end
