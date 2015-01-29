class Recipe
  attr_accessor :id, :title, :directions, :ingredients, :cooking_time, :image_url
  # Title, Directions, List of Ingredients, Cooking Time.
  def initialize(args)
    @id = args[:id]
    @title = args[:title]
    @directions = args[:directions]
    @ingredients = args[:ingredients]
    @cooking_time = args[:cooking_time]
    @image_url = args[:image_url]
  end
end