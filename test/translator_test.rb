require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
class TranslatorTest < Minitest::Test

  def test_it_exists
    @translator = Translator.new
    assert_instance_of Translator, @translator
  end

  def test_translate_1_letter
    @translator = Translator.new
    a_key = ["0.", "..", ".."]
    assert_equal a_key, @translator.translate_to_braille("a")
  end

  def test_translate_a_few_letters
    @translator = Translator.new
    answer_key = ["0.0.0000", "..0....0", "........"]
    assert_equal answer_key, @translator.translate_to_braille("abcd")
  end

  def test_translate_spaces
    @translator = Translator.new
    answer_key = ["....", "....", "...."]
    assert_equal answer_key, @translator.translate_to_braille("  ")
  end

  def test_adding_a_row_when_80_char_limit_is_reached
    @translator = Translator.new
    long_answer = (
      "aaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    )
    answer_key = ["0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.",
                  "................................................................................",
                  "................................................................................",
                  "0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.",
                  "............................................",
                  "............................................"]
    assert_equal answer_key, @translator.translate_to_braille(long_answer)
  end

end
