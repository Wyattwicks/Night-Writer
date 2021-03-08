require 'minitest/autorun'
require 'minitest/pride'
require './lib/englishtranslator'
class EnglishTranslatorTest < Minitest::Test

  def setup
    @translator = EnglishTranslator.new
  end

  def test_it_exists
    assert_instance_of EnglishTranslator, @translator
  end

  def test_translate_to_english
    @translator.translate_to_english("
    .00..0.0...0.0..0....00..0.0..00000....00.0...00.0000..0...00..0.00.0...000.00.0
    00000.0...0.0.......00.00.00..0...00..0000.0...00.000000..00000.00.000..0.00..00
    0.....0.....0.......0...0.0.....0.0...0.......0.......0....00...0...0...0.0.0...
    ")
    assert_equal "this is a", @translator.english_message
  end
end
