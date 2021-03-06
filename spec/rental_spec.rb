require "minitest/autorun"
require "minitest/reporters"
require "rental.rb"
Minitest::Reporters.use!

class TestRental < Minitest::Test

  def test_rental
    movie = Movie.new("Ruby Ruby Ruby", Movie::CHILDRENS)
    rental = Rental.new(movie, 10)
    assert_equal(rental.movie.title, "Ruby Ruby Ruby")
    assert_equal(rental.days_rented, 10)
  end

end

