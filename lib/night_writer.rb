require './lib/filewriter'
require './lib/filereader'

class NightWriter

  attr_reader :file_reader, :file_writer

  def initialize
    @file_reader = FileReader.new
    @file_writer = FileWriter.new
  end

  def display_confirmation
    if @file_writer.write_new_file
      puts "Created #{@file_writer.braille_txt_file_name} containing xxx characters."
    else
      puts "File not read"
    end
  end
end

nightwriter = NightWriter.new


  puts nightwriter.display_confirmation
