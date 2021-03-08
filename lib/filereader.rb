class FileReader
  attr_reader :file_read

  def read
    @file_read = ARGV[0]
    File.read(@file_read)
  end

  # def count
  #   @char_count = @reader.tr("\n", "").length
  # end
end
