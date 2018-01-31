class Pub

  attr_reader :name, :till, :age_limit, :drunkeness_limit
  attr_writer :till

  def initialize(name, till)
    @name = name
    @drinks = []
    @till = till
    @age_limit = 18
    @drunkeness_limit = 50
  end

  def drink_count
    return @drinks.count()
  end

  def add_drink(drink)
    @drinks << drink
  end

  def drink_sold(drink)
    @drinks.delete(drink)
  end

  def increase_till_amount(drink)
    @till += drink.price
  end

  def check_age(customer)
    return customer.age >= @age_limit
  end





end
