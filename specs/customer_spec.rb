require('minitest/rg')
require('minitest/autorun')
require_relative('../customer.rb')

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

end
