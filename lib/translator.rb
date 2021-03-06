require './lib/braille_alphabetable'

class Translator
  include BrailleAlphabet

  def initialize(testing)
    #Remember to remove arguement and the @testing variable after testing complete.
    @testing = testing
    @braille_message = []
  end

  def translate_to_braille
    letters = @testing.chars
    (letters.count).times do |letter|
      @braille_message << braille_alphabet[letters.shift]
    end
    @braille_message
  end
end
