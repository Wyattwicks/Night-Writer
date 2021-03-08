require './lib/english_alphabetable'
class EnglishTranslator

  include EnglishAlphabet

  attr_reader :file_read, :english_message

  def initialize
    @english_message = [""]
  end



  def translate_to_english(file)
    file_read = file
    @english_message = file_read.chars.each_slice(3)
    i = 0

  end
end
