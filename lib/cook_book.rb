class CookBook

  attr_reader :all_recipies

  def initialize
    @all_recipies = []
  end

  def add_recipe(recipe)
    @all_recipies << recipe
  end

  def summary
    book = Hash.new
    @all_recipies.map do |recipe|
      if book.has_key?(recipe.name) == true
        book[:name]
      end
        book[:name] = recipe.name
        book[:details] = recipe.ingredients_required
        book[:total_calories] = recipe.total_calories
    end
    book
  end
end
