# encoding: utf-8

require 'helper'

class Nanoc::Maruku::FilterTest < Minitest::Test

  def test_filter
    # Create filter
    filter = ::Nanoc::Maruku::Filter.new

    # Run filter
    result = filter.run("This is _so_ *cool*!")
    assert_equal("<p>This is <em>so</em> <em>cool</em>!</p>", result)
  end

end
