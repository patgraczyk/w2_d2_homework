require("minitest/autorun")
require_relative('../river')
require('minitest/rg')
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
    @fish1 = Fish.new("Pawel")
    @fish2 = Fish.new("Colin")
    @fish3 = Fish.new("Alex")
    @fish = [@fish1, @fish2, @fish3]
  end

  def test_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_put_fish_in_river
    @river.put_fish_in_river(@fish1)
    assert_equal(1, @river.stock.count)
  end

  def test_take_fish_from_river
    @river.take_fish_from_river(@fish1)
    assert_equal(0, @river.stock.count)
  end

  #FIX THIS TO LOOK AT ARRAY FISH
  def test_count_of_fish
    @river.take_fish_from_river(@fish)
    assert_equal(3, @river.stock.count)
  end

end
