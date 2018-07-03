require("minitest/autorun")
require_relative('../river')
require('minitest/rg')
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
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

end
