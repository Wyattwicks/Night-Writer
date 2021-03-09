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
    braille = ".00.0...0.0.0.00...00..0000..00000...00.00000000...00.0...000.000...0.00...00.0.
0.0..0..0..0.0.0..00..00..000..000..00...0.0.0.0..00.0.0........00...00...0..00.
..00..........0....0..0.......0......0..00000000..0.0.0...0.00......0.....0...0.
0..00000...00.00.00..0..0.00..000..0000..000..000.00.0...00.00000.....0000..00.0
0.0..000..0....00..000...0.0...0.0000.0.0...00.0.0.000..00...000.00......0..000.
0...0.....0.000.0...0...0.0...0...0...0...00.0..0.0.0.....00..........0.00......
0.0.000..00.0000..000..0..000....000...00....0.0..0.0000..000..0...0..0.00.00.00
000.0.000..0.0.0..00.000.....0..0..0..00.0..0.00.....0.0...0.000..0....0.000.0.0
0.0...0.....0.......0.0...0.......0...0.0.....0.....0.....0.0..0........0...0.00
...00.0...000.0.000...
..0000.0...000......00
..0.........0...0....0"

    answer = "ive been watching wayyyy too much of selling sunset on netflix.dont judge, my girlfriend got me in to it and now i enjoy the drama."

    assert_equal answer, @translator.call(braille)
  end

  def test_determine_number_character
    braille = [".00..0.0...0.0..0....00..0.0..00000....00.0...00.0000..0...00..0.00.0...000.00.0",
  "00000.0...0.0.......00.00.00..0...00..0000.0...00.000000..00000.00.000..0.00..00",
  "0.....0.....0.......0...0.0.....0.0...0.......0.......0....00...0...0...0.0.0...",
  "0.00.0.....0..0.00000....0.0...0000.0..0...000000.00...00..0..00.0000...000..0..",
  ".0..0000..0...00..0..0..0.00..00..00..0.0000...0...0..00..0....00....0......0000",
  "....0..0........0.0.......0....00.0.0.0..00.0.....00...0..0...0.........0.000..0",
  "...0.0...00..0..000.00..",
  "..0.00..00..0...0....000",
  "....0....0..0.....000..0"]
    answer = "This is a test for the night writer project. I hope it works.
  Today was nice out. It was fun."
    assert_equal 92, @translator.determine_number_characters(braille)
  end

  def test_create_braille_array
    braille = "0....."
    expected = ["a"]
    assert_equal expected, @translator.create_braille_array(braille)
  end

  def test_join_chars
    braille= ["a", "b"]
    assert_equal "ab", @translator.join_chars(braille)
  end



end
