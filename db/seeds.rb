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

24.times do
  Ingredient.create(name: cocktail['drinks'].sample['strIngredient1'])
end

puts 'Created 24 ingredients'

cocktails = %w[Spritz Mojito Sangria Margarita LongIsland Punch BlueLagoon GinTo PinaColada]

cocktails.each do |c|
  Cocktail.create(name: c)
end

puts "Created #{cocktails.length} cocktails"
