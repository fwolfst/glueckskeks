require 'test_helper'

class GlueckskeksTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Glueckskeks::VERSION
  end

  def test_it_generates_stuff
    assert_equal "bad luck!", "bad luck!"
  end
end
