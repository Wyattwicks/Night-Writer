require 'minitest/autorun'
require 'minitest/pride'
require './lib/filereader'
class FileReaderTest < Minitest::Test
  def test_it_exists
    filereader = FileReader.new('./data/messagetest.txt')
    assert_instance_of FileReader, filereader
  end

  def test_it_can_read_text_inside_file
    filereader = FileReader.new('./data/messagetest.txt')
    answer = "This is a test for the night writer project. I hope it works.\nToday was nice out. It was fun."
    assert_equal answer, filereader.read
  end
end
