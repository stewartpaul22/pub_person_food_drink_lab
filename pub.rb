class Pub

  attr_reader :name, :till

  def initialize(name, till)
    @name = name
    @drinks = []
    @till = till
  end

end
