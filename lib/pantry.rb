class Pantry

  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock.sum do |ingredent, stock|
      stock
    end
  end

  def restock(ingredient, amount)
    @stock[ingredient] += amount
  end

end
