require 'minitest/autorun'
require 'minitest/pride'
require './lib/filewriter'
class FileWriterTest < Minitest::Test
  def test_it_exists
    file_write = 'xyz'
    filewriter = FileWriter.new(file_write)
    assert_instance_of FileWriter, filewriter
  end
end
