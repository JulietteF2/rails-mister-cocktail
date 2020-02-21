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

Cocktail.create!(name: "Spritz", image: cl_image_path("photo-1570598912132-0ba1dc952b7d_hijjrd"))

Cocktail.create!(name: "Old Fashioned", image: cl_image_path("photo-1560179304-6fc1d8749b23_orohnx"))

Cocktail.create!(name: "Gin & Tonic", image: cl_image_path("photo-1545438102-799c3991ffb2_wi8udc"))

Cocktail.create!(name: "Margarita", image: cl_image_path("photo-1486428263684-28ec9e4f2584_hiy5rr"))

Cocktail.create!(name: "Watermelon Caïpirinha", image: cl_image_path("photo-1527661591475-527312dd65f5_epo6um"))

Cocktail.create!(name: "Berry Fizz", image: cl_image_path("photo-1527091755570-1daada653420_e33ytf"))

Cocktail.create!(name: "Blue Lagoon", image: cl_image_path("photo-1559842623-b82d2e1228a5_bt2nw8"))

Cocktail.create!(name: "Mojito", image: cl_image_path("photo-1551538827-9c037cb4f32a_wwutwc"))

Cocktail.create!(name: "Cosmopolitan", image: cl_image_path("photo-1559842438-2942c907c8fe_x7endt"))

Cocktail.create!(name: "Frozen Test", image: cl_image_path("photo-1497534446932-c925b458314e_jpgjoo"))

Cocktail.create!(name: "Pina Colada", image: cl_image_path("photo-1577595166653-c4b06b30fa18_gkscnj"))

Cocktail.create!(name: "Goyabakka", image: cl_image_path("photo-1555940726-1c297abcc1f1_do2gkk"))



puts "Created #{Cocktail.all.length}"
