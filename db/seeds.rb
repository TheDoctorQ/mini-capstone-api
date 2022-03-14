# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.new(name: "Kanan's Saber", price: 900, image_url: "https://i.etsystatic.com/6662347/r/il/41f2a8/2306789453/il_fullxfull.2306789453_61wh.jpg", description: "A lightsaber that once belonged to the Jedi Kanan Jarrus; green hilt, blue kyber crystal.")
product.save  