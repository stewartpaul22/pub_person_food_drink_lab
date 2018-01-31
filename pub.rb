class Pub

  attr_reader :name, :till

  def initialize(name, till)
    @name = name
    @drinks = []
    @till = till
  end

  def drink_count
    return @drinks.count()
  end

end
