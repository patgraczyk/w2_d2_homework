require("minitest/autorun")
require_relative('../fish')
require('minitest/rg')
require_relative("../river")


class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Pawel")
    # @fish2 = Fish.new("Colin")
    # @fish3 = Fish.new("Alex")
    # @fish =[@fish1, @fish2, @fish3]
  end

  def test_fish_present
    assert_equal("Pawel", @fish1.name)
  end

end
