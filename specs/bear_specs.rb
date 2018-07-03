require("minitest/autorun")
require_relative('../bear')
require('minitest/rg')

class BearTest < MiniTest::Test

  def setup
    @bear = bear.new("Anthony", "Grizzlie")
  end

  def test_bear_name
    assert_equal("Anthony", @bear.name)
  end

end
