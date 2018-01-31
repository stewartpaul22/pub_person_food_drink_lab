require('minitest/rg')
require('minitest/autorun')
require_relative('../pub.rb')

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("The Boozer", 500.00)
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




end
