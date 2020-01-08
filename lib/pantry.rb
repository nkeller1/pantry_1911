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

  def enough_ingredients_for?(recipe)
    enough = false
    recipe.ingredients_required.map do |ingredient, amount|
      if amount <= @stock[ingredient]
        enough = true
      else
        enough = false
      end
    end
    enough
  end
end
