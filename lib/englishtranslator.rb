require './lib/english_alphabetable'
class EnglishTranslator

  include EnglishAlphabet

  attr_reader :file_reader, :english_message

  def initialize(file_reader)
    @file_reader = file_reader
  end

  def format
    

  # def format
  #   trim = @file_reader.tr("\n", "")
  #   lines = trim.split("").each_slice(3).to_a
  #   first_three_lines = lines[0..2]
  #   amount_of_lines = lines.length
  #   line_counter = 0
  #   amount_of_lines_left = amount_of_lines - line_counter
  #   character_array = []
  #   new_line = []
  #   if amount_of_lines_left != 0
  #     first_three_lines.each do |line|
  #       new_line << line.slice!(0..1)
  #       line_counter += 1
  #     end
  #     character_array << new_line[0..2]
  #   end
  #   character_array
  #   require "pry";binding.pry
  # end



  def translate_to_english(file)

    @english_message = file_read.chars.each_slice(3)
    i = 0

  end
end
