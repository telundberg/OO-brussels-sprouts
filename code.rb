#YOUR CODE GOES HERE
class Ingredient
  def initialize(quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summary
    "#{@quantity} #{@unit} #{@name}"
  end
end

ingredient = Ingredient.new(47.0, "lb(s)", "Brussels Sprouts")

# puts ingredient.summary


class Recipe
  def initialize(name, ingredients, instructions)
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  def summary
    puts "Name: #{@name}"
    puts " "
    puts "Ingredients"
    @ingredients.each do |item|
      puts "-" " ""#{item.summary}"
    end
    puts " "
    puts "Instructions"
    count = 0
    @instructions.each do |num|
    puts (count +1).to_s + ". "+"#{num}"
    count += 1
    end
  end
end

name = "Roasted Brussels Sprouts"

ingredients = [
    Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
    Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
    Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
    Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
]

instructions = [
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
    ]

recipe = Recipe.new(name, ingredients, instructions)
recipe.summary
