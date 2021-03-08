require './lib/filewriter'
require './lib/filereader'
require './lib/translator'

class NightWriter

  attr_reader :file_reader, :file_writer, :translator, :braille_translation

  def initialize
    @file_reader = FileReader.new
    @file_writer = FileWriter.new
  end

  def display_confirmation
    if @file_writer.write_new_file
      puts "Created '#{ARGV[1]}' containing xxxxx characters."
    else
      puts "File not read"
    end
  end


  def braille_translate
    translator = Translator.new
    @braille_translation = translator.translate_to_braille(@file_reader)
  end

  def add_translation
    File.open(@file_writer, "a") do |f|
      f.write(@braille_message)
    end
  end
end

nightwriter = NightWriter.new
puts nightwriter.display_confirmation
# require "pry";binding.pry
nightwriter.braille_translate
nightwriter.add_translation
