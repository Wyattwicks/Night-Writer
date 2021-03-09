require './lib/filewriter'
require './lib/filereader'
require './lib/englishtranslator'

class NightReader

  attr_reader :file_reader, :file_writer, :translator, :english_translation, :characters

  def initialize
    @file_reader = FileReader.new.read
  end

  def display_confirmation
    characters = @file_reader.length
      puts "Created '#{ARGV[1]}' containing #{characters} characters."
  end


  def english_translate
    translator = EnglishTranslator.new(@file_reader)
    @english_translation = translator.format
  end

  def file_writer
    file_writer = FileWriter.new(@english_translation)
    file_writer.write_new_file
    file_writer.add_translation
  end
end

nightreader = NightReader.new
nightreader.english_translate
# nightreader.file_writer
puts nightreader.display_confirmation
