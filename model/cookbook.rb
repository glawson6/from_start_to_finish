require_relative './recipe'

class Cookbook

  def self.all
  [
      Recipe.new(id: 1,title: "Blackened Catfish", directions: "Preheat a cast iron skillet to medium high with peanut oil. Mix dry ingredients together. Cover both sides of catfish with the seasoning mix and place in skillet. Cook on one side for 4 minutes and turn when cooked halfway through. Cook for another 4 minutes on the other side. Remove from pan and serve with Cajun remoulade.
",ingredients: ["2 tablespoons peanut oil, for frying","4 catfish filets","1 1/2 tablespoons salt","1 tablespoons freshly ground black pepper","1 tablespoons cayenne pepper"], cooking_time: 8, image_url: "http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2008/12/1/0/NY0304_Blackened-Catfish.jpg.rend.sni12col.landscape.jpeg"),
      Recipe.new(id: 2,title: "Baked Chicken Wings", directions: "Preheat oven to 375*F or 190*C. Combine all ingredients except chicken in a large, resealable bag. Seal and shake to combine. Add the chicken into the resealable bag, seal and shake to coat evenly. Arrange the chicken wings flat on a baking sheet. You can choose to line it with parchment paper or tin foil. Cook the wings in the preheated oven for 1 hour, or until wings are crispy and cooked through.",ingredients: ["1 lb chicken wings (roughly 15-20)","1 teaspoon garlic powder","1/2-1 teaspoon onion powder","2 teaspoons cayenne pepper"], cooking_time: 60, image_url: "http://lds.net/wp-content/uploads/2014/05/caramelized-baked-chicken.jpg"),
      Recipe.new(id: 3,title: "Collard Greens", directions: "Heat oil in a large pot over medium-high heat. Add bacon, and cook until crisp. Remove bacon from pan, crumble and return to the pan. Add onion, and cook until tender, about 5 minutes. Add garlic, and cook until just fragrant. Add collard greens, and fry until they start to wilt.
Pour in chicken broth, and season with salt, pepper, and red pepper flakes. Reduce heat to low, cover, and simmer for 45 minutes, or until greens are tender.",ingredients: ["1 tablespoon olive oil","1 large onion, chopped","2 cloves garlic, minced","1 teaspoon pepper"], cooking_time: 120,image_url: "http://www.gloryfoods.com/media/images/Fresh%20Garlic%20Greens.jpg"),
      Recipe.new(id: 4,title: "Cornbread", directions: "N/A",ingredients: [], cooking_time: 60,image_url: "http://lds.net/wp-content/uploads/2014/05/caramelized-baked-chicken.jpg"),
      Recipe.new(id: 5,title: "Sauteed Spinach", directions: "N/A",ingredients: [], cooking_time: 60,image_url: "http://lds.net/wp-content/uploads/2014/05/caramelized-baked-chicken.jpg"),
      Recipe.new(id: 6,title: "Butter Pecan Cake", directions: "N/A",ingredients: [], cooking_time: 60,image_url: "http://lds.net/wp-content/uploads/2014/05/caramelized-baked-chicken.jpg")
  ]
  end

  def self.find(id)
    self.all.find do |item|
      item.id == id
    end
  end

  def self.search(pattern)
    self.all.select do |item|
      item.title.downcase.include?(pattern.downcase) ||
          item.directions.downcase.include?(pattern.downcase) ||
          item.ingredients.join.to_s.downcase.include?(pattern.downcase) ||
          item.cooking_time.to_s.downcase.include?(pattern.downcase)
    end
  end
end