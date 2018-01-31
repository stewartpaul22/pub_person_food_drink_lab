require('minitest/rg')
require('minitest/autorun')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("The Boozer", 500.00)
    @drink = Drink.new("Beer", 2.99, 5)
    @customer = Customer.new("Danny", 50.00, 26)
    @customer2 = Customer.new("Paul", 100.00, 17)
  end

  def test_pub_has_a_name
    assert_equal("The Boozer",@pub.name)
  end

  def test_till_has_funds
    assert_equal(500.00, @pub.till)
  end

  def test_pub_drink_count
    assert_equal(0, @pub.drink_count())
  end

  def test_add_drinks_to_pub
    @pub.add_drink(@drink)
    assert_equal(1, @pub.drink_count())
  end

  def test_drink_is_sold
    @pub.add_drink(@drink)
    @pub.drink_sold(@drink)
    assert_equal(0, @pub.drink_count())
  end

  def test_till_increases_when_drink_bought
    @pub.add_drink(@drink)
    @pub.drink_sold(@drink)
    @pub.increase_till_amount(@drink)
    assert_equal(502.99, @pub.till)
  end

  def test_age_limit
    assert_equal(18, @pub.age_limit)
  end

  def test_is_the_customer_old_enough
    assert_equal(true, @pub.check_age(@customer))
  end

  def test_successful_sale
    @pub.add_drink(@drink)
    @customer.buy_drink(@drink, @pub)
    assert_equal(502.99, @pub.till)
    assert_equal(47.01, @customer.wallet)
    assert_equal(1, @customer.number_of_drinks())
    assert_equal(0, @pub.drink_count())
  end

  def test_unsuccessful_sale
    @pub.add_drink(@drink)
    @customer2.buy_drink(@drink, @pub)
    assert_equal(500.00, @pub.till)
    assert_equal(100.00, @customer2.wallet)
    assert_equal(0, @customer2.number_of_drinks())
    assert_equal(1, @pub.drink_count())
  end




end
