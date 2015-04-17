require "minitest/autorun"
require "minitest/reporters"
require "movie.rb"
Minitest::Reporters.use!

class TestMovie < Minitest::Test

  def test_new_release_movie
    movie = Movie.new("SpiderMan", Movie::NEW_RELEASE)
    assert_equal(movie.title, 'SpiderMan')
    assert_equal(movie.price_code, Movie::NEW_RELEASE)
  end

end

