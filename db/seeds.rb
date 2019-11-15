# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Doses.destroy_all
Cocktails.destroy_all
Ingredient.destroy_all

require 'open-uri'
require 'json'
ingredients = []

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_list = open(url).read
list = JSON.parse(ingredients_list)

list["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

Ingredient.create(name: "mint")
