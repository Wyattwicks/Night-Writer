require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
class TranslatorTest < Minitest::Test

  #Tests 1 through 4 were made when initialize took an argument for testing purposes
  def test_it_exists
    @translator = Translator.new
    answer = @translator.translate_to_braille("abc eneafngjaekyfgnamesfunaemgghmwwfasfasdwdwngabkueafawfaeghfahgbefnjayefbgjn")
    assert_instance_of Translator, @translator
  end

  def test_translate_1_letter
    skip
    @translator = Translator.new("a")
    a_key = ["0.", "..", ".."]
    assert_equal [a_key], @translator.translate_to_braille
  end

  def test_translate_a_few_letters
    skip
    @translator = Translator.new("abcd")
    answer_key = [["0.", "..", ".."], ["0.", "0.", ".."], ["00", "..", ".."], ["00", ".0", ".."]]
    assert_equal answer_key, @translator.translate_to_braille
  end

  def test_translate_spaces
    skip
    @translator = Translator.new("  ")
    answer_key = [["..", "..", ".."], ["..", "..", ".."]]
    assert_equal answer_key, @translator.translate_to_braille
  end
end
