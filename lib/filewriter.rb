require './lib/translator'

class FileWriter
   attr_reader :file_write

  def initialize(file_write)
    @file_write = file_write
    @translator = Translator.new
  end

  def write_new_file
     File.write(file_write)
  end

end
