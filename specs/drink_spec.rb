require('minitest/rg')
require('minitest/autorun')
require_relative('../drink.rb')

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("Beer", 2.99)
  end

  def test_drink_has_name
    assert_equal("Beer", @drink.name)
  end

end
