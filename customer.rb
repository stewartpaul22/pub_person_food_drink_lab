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
    if old_enough(pub) && sober_enough(pub) && enough_funds(drink)
      add_drink_to_cust(drink)
      reduce_wallet_balance(drink)
      pub.drink_sold(drink)
      pub.increase_till_amount(drink)
      drink_increases_drunkeness(drink)
    end
  end

  def buy_food(food)
    food_decreases_drunkeness(food)
    @wallet -= food.price
    return @wallet >= food.price()
  end

  def old_enough(pub)
    @age >= pub.age_limit
  end

  def sober_enough(pub)
    @drunkeness_level < pub.drunkeness_limit()
  end

  def enough_funds(drink)
    @wallet >= drink.price
  end

  def add_drink_to_cust(drink)
    @number_of_drinks << drink
  end

  def reduce_wallet_balance(drink)
    @wallet -= drink.price()
  end

  def number_of_drinks()
    @number_of_drinks.length()
  end

  def drink_increases_drunkeness(drink)
    @drunkeness_level += drink.alcohol_level()
  end

  def food_decreases_drunkeness(food)
    @drunkeness_level -= food.rejuvenation_level
  end

  def too_drunk(pub)
    return @drunkeness_level >= pub.drunkeness_limit
  end




end
