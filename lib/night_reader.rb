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
    translator = EnglishTranslator.new
    @english_translation = translator.translate_to_english(@file_reader)
  end

  def file_writer
    file_writer = FileWriter.new(@english_translation)
    file_writer.write_new_file
    file_writer.add_translation
  end
end

nightreader = NightReader.new
nightwriter.english_translate
nightwriter.file_writer
puts nightwriter.display_confirmation
