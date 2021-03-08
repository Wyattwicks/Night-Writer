class FileReader

  def read
    file_read = ARGV[0]
    File.read(file_read)
  end

end
