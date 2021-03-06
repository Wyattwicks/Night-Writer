class FileWriter
   attr_reader :braille_txt_file_name

  def initialize
    @braille_txt_file_name = ARGV[1]
    @character_count = 0
  end

  def write_new_file
    if @braille_txt_file_name == "braille.txt"
      @character_count = File.write(@braille_txt_file_name)
    end
  end

end
