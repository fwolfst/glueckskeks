require 'test_helper'

class TemplaterTest < Minitest::Test
  def test_it_contemplates
    corpus = { 'base' => ['<noun>'], 'noun' => ['<adj> cookie'], 'adj' => ['jummy']}
    assert_equal 'jummy cookie', Glueckskeks::Templater.fill('<noun>', corpus)
  end
end
