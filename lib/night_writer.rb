require './lib/filewriter'
require './lib/filereader'
require './lib/translator'

class NightWriter

  attr_reader :file_reader, :file_writer, :translator, :braille_translation

  def initialize

    @file_reader = FileReader.new.read



  end

  def display_confirmation

      puts "Created '#{ARGV[1]}' containing xxxxx characters."
  end


  def braille_translate
    translator = Translator.new
    @braille_translation = translator.translate_to_braille(@file_reader)
  end

  def file_writer
    file_writer = FileWriter.new(@braille_translation)
    file_writer.write_new_file
    file_writer.add_translation
  end

end

nightwriter = NightWriter.new
nightwriter.braille_translate
nightwriter.file_writer
puts nightwriter.display_confirmation
