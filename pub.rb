class Pub

  attr_reader :name, :till
  attr_writer :till

  def initialize(name, till)
    @name = name
    @drinks = []
    @till = till
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

end
