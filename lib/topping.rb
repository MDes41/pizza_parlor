class Topping
  attr_reader :name, :price, :is_vegetarian
  
  def initialize(line)
    @name = line[:name]
    @price = line[:price]
    @is_vegetarian = line[:is_vegetarian]
  end
end
