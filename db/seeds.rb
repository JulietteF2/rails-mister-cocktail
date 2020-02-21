# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
cocktails_serialized = open(url).read
cocktail = JSON.parse(cocktails_serialized)

# Ingredient.destroy_all!
# Cocktail.destroy_all!

32.times do
  Ingredient.create(name: cocktail['drinks'].sample['strIngredient1'])
end

puts "Created #{Ingredient.all.length}"

Cocktail.create!(name: "Spritz", image_url: "https://images.unsplash.com/photo-1570598912132-0ba1dc952b7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")

Cocktail.create!(name: "Old Fashioned", image_url: "https://images.unsplash.com/photo-1560179304-6fc1d8749b23?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")

Cocktail.create!(name: "Gin & Tonic", image_url: "https://images.unsplash.com/photo-1545438102-799c3991ffb2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")

Cocktail.create!(name: "Margarita", image_url: "https://images.unsplash.com/photo-1486428263684-28ec9e4f2584?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")

Cocktail.create!(name: "Watermelon Caïpirinha", image_url: "https://images.unsplash.com/photo-1527661591475-527312dd65f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=716&q=80")

Cocktail.create!(name: "Berry Fizz", image_url: "https://images.unsplash.com/photo-1527091755570-1daada653420?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=886&q=80")

Cocktail.create!(name: "Blue Lagoon", image_url: "https://images.unsplash.com/photo-1559842623-b82d2e1228a5?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")

Cocktail.create!(name: "Mojito", image_url: "https://images.unsplash.com/photo-1551538827-9c037cb4f32a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=802&q=80")

Cocktail.create!(name: "Cosmopolitan", image_url: "https://images.unsplash.com/photo-1559842438-2942c907c8fe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")

Cocktail.create!(name: "Frozen Test", image_url: "https://images.unsplash.com/photo-1497534446932-c925b458314e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=814&q=80")

Cocktail.create!(name: "Pina Colada", image_url: "https://images.unsplash.com/photo-1577595166653-c4b06b30fa18?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")

Cocktail.create!(name: "Goyabakka", image_url: "https://images.unsplash.com/photo-1555940726-1c297abcc1f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")

puts "Created #{Cocktail.all.length}"
