require './lib/filewriter'
require './lib/filereader'
require './lib/translator'

class NightWriter

  attr_reader :file_reader, :file_writer, :translator, :braille_translation, :characters

  def initialize
    @file_reader = FileReader.new.read
  end

  def display_confirmation
    characters = @file_reader.length
      puts "Created '#{ARGV[1]}' containing #{characters} characters."
  end

  def braille_translate
    translator = Translator.new
    @braille_translation = translator.translate_to_braille(@file_reader)
  end

  def file_writer
    file_writer = FileWriter.new(@braille_translation)
      file_writer.add_line_breaks
    file_writer.write_new_file
    file_writer.add_translation
  end

  def start
    self.braille_translate
    self.file_writer
    self.display_confirmation
  end
end

nightwriter = NightWriter.new
nightwriter.start
