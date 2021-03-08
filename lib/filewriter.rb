
class FileWriter
   attr_reader :file_writer, :braille_message, :formatted_string

  def initialize(braille_message)
    @file_writer = ARGV[1]
    @braille_message = braille_message
    @formatted_string = add_line_breaks
  end

  def add_line_breaks
    string_collection = ""
    @braille_message.each do |line|
      string_collection << (line + "\n")
    end
    @formatted_string = string_collection.chomp
  end

  def write_new_file
    File.new(@file_writer, "w")
  end

  def add_translation
    File.open(@file_writer, "a") do |f|
      f.write(@formatted_string)
    end
  end

end
