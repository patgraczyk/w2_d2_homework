require("minitest/autorun")
require_relative('../fish')
require('minitest/rg')

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Pawel")
  end

  def test_fish_present
    assert_equal("Pawel", @fish1.name)
  end



end
