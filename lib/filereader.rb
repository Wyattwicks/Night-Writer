class FileReader
  def read_txt_file

      txt_file_name = ARGV[0]
      File.read(txt_file_name).chomp
  end

end
