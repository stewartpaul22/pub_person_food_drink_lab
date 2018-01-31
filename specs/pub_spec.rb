require('minitest/rg')
require('minitest/autorun')
require_relative('../pub.rb')

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("The Boozer", 1)
  end

  def test_pub_has_a_name
    assert_equal("The Boozer",@pub.name)
  end

  def test_has_till
    assert_equal(1, @pub.till)
  end

  


end
