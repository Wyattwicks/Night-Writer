require './lib/braille_alphabetable'
require './lib/filereader'

class Translator
  include BrailleAlphabet

  attr_reader :braille_message

  def initialize
    @reader = FileReader.new('./data/message.txt').read
    @braille_message = ["", "", ""]
  end

  def translate_to_braille(string)
    i = 0
    string.each_char do |char|

      add_row if i % 40 == 0 && i != 0


        format_braille_character(BRAILLE_ALPHABET[char], i)

        i += 1
    end
    @braille_message
  end

  def format_braille_character(braille_character, character_position)

    i = 0
    until i > 2 do

      @braille_message[determine_array_position(character_position) + i] << braille_character[i]
      i += 1
    end
  end

  def add_row
    @braille_message.push("", "", "")

  end

  def determine_array_position(character_position)

    (character_position / 40) * 3
  end


end
