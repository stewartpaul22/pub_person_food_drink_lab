require('minitest/rg')
require('minitest/autorun')
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')


class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Frank", 100.00)
  end

  def test_has_name
    assert_equal("Frank", @customer.name)
  end

  def test_wallet_has_funds
    assert_equal(100.00, @customer.wallet)
  end

  def test_customer_can_buy_drink
    drink = Drink.new("beer", 2.99)
    @customer.buy_drink(drink)
    assert_equal(1, @customer.number_of_drinks())
  end

  def test_wallet_reduces_when_buys_a_drink
    drink = Drink.new("beer", 2.99)
    @customer.buy_drink(drink)
    assert_equal(97.01, @customer.wallet)
  end

  def test_customer_can_buy_drink_from_pub
    pub = Pub.new("The Boozer", 500.00)
    drink = Drink.new("beer", 2.99)
    pub.add_drink(drink)
    @customer.buy_drink(pub.drink_sold(drink))
    assert_equal(0, pub.drink_count())
    assert_equal(1, @customer.number_of_drinks)
  end




end
