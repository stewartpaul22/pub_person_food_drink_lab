class Customer

  attr_reader :name, :wallet, :age, :drunkeness_level

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @number_of_drinks = []
    @age = age
    @drunkeness_level = 0
  end

  def buy_drink(drink, pub)
    if @age >= pub.age_limit
      @number_of_drinks << drink
      @wallet -= drink.price()
      pub.drink_sold(drink)
      pub.increase_till_amount(drink)
      drunkeness_level_change(drink)
    end
  end

  def number_of_drinks()
    @number_of_drinks.length()
  end

  def drunkeness_level_change(drink)
    @drunkeness_level += drink.alcohol_level()
  end

end
