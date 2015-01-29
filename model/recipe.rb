class Recipe
  attr_accessor :id, :title, :directions, :ingredients, :cooking_time
  # Title, Directions, List of Ingredients, Cooking Time.
  def initialize(args)
    @id = args[:id]
    @title = args[:title]
    @directions = args[:directions]
    @ingredients = args[:ingredients]
    @cooking_time = args[:cooking_time]
  end
end