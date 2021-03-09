require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_reader'
require './data/brailletest.txt'
require './data/messagetest.txt'
class NightReaderTest < Minitest::Test
  def test_it_exists
    nightreader = NightReader.new
    assert_instance_of NightReader, nightreader
  end
end
