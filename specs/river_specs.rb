require("minitest/autorun")
require_relative('../river')
require('minitest/rg')

class FishTest < MiniTest::Test

  def setup
    @river = River.new("Amazon", 0)
  end

  def test_river_name
    assert_equal("Amazon", @river.name)
  end


end
