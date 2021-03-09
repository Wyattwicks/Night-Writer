require 'minitest/autorun'
require 'minitest/pride'
require './lib/filewriter'
class FileWriterTest < Minitest::Test
  def test_add_line_breaks
    message = ["asdadaw", "asd", "aaa"]
    filewriter = FileWriter.new(message)
    assert_equal "asdadaw\nasd\naaa", filewriter.add_line_breaks
  end
end
