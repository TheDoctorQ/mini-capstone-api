# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.new(name: "Kanan's Saber", price: 900, description: "A lightsaber that once belonged to the Jedi Kanan Jarrus; green hilt, blue kyber crystal.", quantity: 1, supplier_id: 1)
product.save

product = Product.new(name: "Kyber Crystal - Blue", price: 200, description: "A crystal used to power and focus the Jedi Lightsaber weapon.", quantity: 12, supplier_id: 1)
product.save

product = Product.new(name: "Kyber Crystal - Green", price: 200, description: "A crystal used to power and focus the Jedi Lightsaber weapon.", quantity: 18, supplier_id: 1)
product.save

product = Product.new(name: "Kyber Crystal - Cracked Purple", price: 400, description: "A crystal used to power and focus the Jedi Lightsaber weapon, due to the crack in the crystal the emanating power will appear unstable.", quantity: 2, supplier_id: 1)
product.save

# products = Product.where(supplier_id: nil)

# products.each do |product|
#   product.supplier_id = rand(1..2)
#   product.save
# end