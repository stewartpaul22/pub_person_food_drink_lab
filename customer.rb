class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @number_of_drinks = []
  end

  def buy_drink(drink)
    @number_of_drinks << drink
    @wallet -= drink.price()
  end

  def number_of_drinks()
    @number_of_drinks.length()
  end



end
