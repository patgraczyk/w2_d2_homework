require("minitest/autorun")
require_relative('../bear')
require('minitest/rg')
require_relative("../river")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Anthony", "Grizzlie")
  end

  def test_bear_name
    assert_equal("Anthony", @bear.name)
  end

  def test_bear_type
    assert_equal("Grizzlie", @bear.type)
  end

  def test_bear_stomach_empty
    assert_equal(0, @bear.stomach.count)
  end

  def test_put_fish_in_bear
    @bear.put_fish_in_bear(@fish1)
    assert_equal(1, @bear.stomach.length)
  end
#same test as above
  # def test_bear_stomach_full
  #   @bear.put_fish_in_bear(@fish1)
  #   assert_equal(1, @bear.stomach.count)
  # end

  def test_bear_roar
    assert_equal("roar", @bear.bear_roar)
  end

  def test_food_count
    @bear.put_fish_in_bear(@fish1)
    assert_equal(1, @bear.food_count)
  end

end
