
class FileWriter
   attr_reader :file_write

  def write_new_file
    File.new(ARGV[1], "w")
  end

end
