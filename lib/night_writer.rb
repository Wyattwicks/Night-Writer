require './lib/filewriter'
require './lib/filereader'

class NightWriter

  attr_reader :file_reader, :file_writer, :file_read, :file_write


  def initialize(file_read, file_write)
    @file_read = file_read
    @file_write = file_write
    @file_reader = FileReader.new(file_read)
    @file_writer = FileWriter.new(file_write)


  end

  def display_confirmation
    if @file_writer.write_new_file
      puts "Created #{@file_writer.braille_txt_file_name} containing xxx characters."
  else
      puts "File not read"
    end
  end
end

nightwriter = NightWriter.new(ARGV[0], ARGV[1])

  puts nightwriter.display_confirmation
