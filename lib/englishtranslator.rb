require './lib/english_alphabetable'
class EnglishTranslator
  include EnglishAlphabet
  attr_reader :file_read, :english_message
  
  def initialize
    @english_message = ""
  end

  def call(braille)
    format(braille)
    braille_array = create_braille_array(english_message)
    join_chars(braille_array)
  end

  def format(braille)
    lines = braille.split("\n")
    char_count = determine_number_characters(lines)
    total_count = 0
    row_count = 0
    index = 0
    until total_count == char_count do
      @english_message << lines[row_count][index..index + 1]
      @english_message << lines[row_count + 1][index..index + 1]
      @english_message << lines[row_count + 2][index..index + 1]
      index += 2
       index = 0 if index == 80
      total_count += 1
      row_count += 3 if (total_count % 40) == 0 && total_count != 0
    end
  end

  def determine_number_characters(lines)
    less_than_80_chars = lines.find_index do |line|
      line.length < 80
    end
    partial_lines = lines[less_than_80_chars + 1].length / 2
    (less_than_80_chars / 3) * 40 + partial_lines
  end

  def create_braille_array(braille_string)
    unformatted_braille_array = braille_string.chars.each_slice(6).map(&:join)
    array_of_braille_chars = unformatted_braille_array.map do |string_char|
      string_char.chars.each_slice(2).map(&:join)
    end
    array_of_english_chars = array_of_braille_chars.map do |char|
      english_alphabet[char]
    end
  end

  def join_chars(array_of_english_chars)
    joined_words = array_of_english_chars.join("")
  end
end
