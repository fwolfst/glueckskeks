require 'test_helper'

class SubstitutorTest < Minitest::Test
  def test_it_substitutes
    corpus = { 'base' => ['<noun>'], 'noun' => ['cookie'] }
    assert_equal 'cookie', Glueckskeks::Substitutor.replace('<noun>', corpus)
  end
end
