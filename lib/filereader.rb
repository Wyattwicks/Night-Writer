class FileReader
  attr_reader :file_read

  def initialize(file_read)
    @file_read = file_read
  end

  def read
      File.read(file_read).chomp
  end
end
