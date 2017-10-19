require 'test_helper'

class CollapserTest < Minitest::Test
  def test_it_collapses
    assert_equal 'c-o0k!e?', Glueckskeks::Collapser.collapse(' cool-old 0 kan! exist ?')
  end
end

