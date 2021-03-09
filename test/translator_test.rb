require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
class TranslatorTest < Minitest::Test
  def setup
    @translator = Translator.new
  end

  def test_it_exists
    assert_instance_of Translator, @translator
  end

  def test_translate_1_letter
    a_key = ["0.", "..", ".."]
    assert_equal a_key, @translator.translate_to_braille("a")
  end

  def test_translate_a_few_letters
    answer_key = ["0.0.0000", "..0....0", "........"]
    assert_equal answer_key, @translator.translate_to_braille("abcd")
  end

  def test_translate_spaces
    answer_key = ["....", "....", "...."]
    assert_equal answer_key, @translator.translate_to_braille("  ")
  end

  def test_adding_a_row_when_80_char_limit_is_reached
    long_answer = (
      "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    )
    answer_key = ["0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.",
                  "................................................................................",
                  "................................................................................",
                  "0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.",
                  "............................................",
                  "............................................"]
    assert_equal answer_key, @translator.translate_to_braille(long_answer)
  end

  def test_determine_array_position
    char_pos = 80
    assert_equal 6, @translator.determine_array_position(char_pos)
  end

end
