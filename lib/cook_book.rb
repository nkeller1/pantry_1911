class CookBook

  attr_reader :all_recipies

  def initialize
    @all_recipies = []
  end

  def add_recipe(recipe)
    @all_recipies << recipe
  end

  def summary
    @all_recipies.reduce([]) do |acc, recipe|
      book = Hash.new
      book[:name] = recipe.name
      book[:details] = recipe.ingredients_required
      book[:total_calories] = recipe.total_calories
      acc << book
      acc
    end
  end
end
