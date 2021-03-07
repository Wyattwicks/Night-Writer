require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'
class NightWriterTest < Minitest::Test

  def test_it_exists #Note: this test and the one below will not run if nightwriter is instantiated in the class
    nightwriter = NightWriter.new("fake file", "other fake file")
    assert_instance_of NightWriter, nightwriter
  end

  def test_display_confirmation
    skip
    nightwriter = NightWriter.new("fake file", "other fake file")
    @file_read = "fake file"
    @file_write = "other fake file"

    answer = "Created other fake file containing xxx characters."
    assert_equal answer, nightwriter.display_confirmation
  end


end
