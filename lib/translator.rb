require './lib/braille_alphabetable'
class Translator
  include BrailleAlphabet

  attr_reader :braille_message, :file_read

  def initialize
    @braille_message = ["", "", ""]
  end

  def translate_to_braille(file)
    file_read = file.tr("\n", "")
    character_count = 0
    file_read.each_char do |char|
      add_row if character_count % 40 == 0 && character_count != 0
        format_braille_character(braille_alphabet[char.downcase], character_count)
        character_count += 1
    end
    @braille_message
  end

  def format_braille_character(braille_character, character_position)
    line_position = 0
    until line_position > 2 do
      @braille_message[determine_array_position(character_position) + line_position] << braille_character[line_position]
      line_position += 1
    end
  end

  def add_row
    @braille_message.push("", "", "")
  end

  def determine_array_position(character_position)
    (character_position / 40) * 3
  end

end
