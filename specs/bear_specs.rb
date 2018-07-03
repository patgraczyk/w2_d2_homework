require("minitest/autorun")
require_relative('../bear')
require('minitest/rg')

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

end
