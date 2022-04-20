# User.create!([
#   {name: "Test name", email: "test@test.com", password_digest: "$2a$12$gIiCWmA1KKaoF3yWH5cLHueTiLI05NiuxAn409xuRJyOIxdhuUcdy", admin: false},
#   {name: "Test name", email: "test2@test.com", password_digest: "$2a$12$KUWnlrBGuooNCshPlpPMLedtY.ClhHx8firrUwjHUuBjlmfJzxF7q", admin: false},
#   {name: "Dave Bowman", email: "Dave@HAL.com", password_digest: "$2a$12$c9OxvLNfPEPKQAMqiymBOOg7O7eabs2mFJ3QT2wkoj.f4S9EFMjD.", admin: false},
#   {name: "Idris Constantine", email: "IC@cs.com", password_digest: "$2a$12$qvaKtIjLXI240rUy9t7.MOc2vveASNRQ3Tl7z5a.EPLIEDUSdF1aW", admin: false},
#   {name: "Slighty Bobfost", email: "hitch@hikers.com", password_digest: "$2a$12$5pM4GZfLp4ouTdS5CmuudOgZQ05NqNF61tKeTgoVyFrZFEeAlQGNS", admin: false},
#   {name: "Slartibartfast", email: "hitch@hikers2.com", password_digest: "$2a$12$7S5RaIB0vZy8jviN00SHjeoDpFpzwtXR.S3IYDSuGHYNs2ul//pFG", admin: false},
#   {name: "Malcolm Reynolds", email: "mal@firefly.verse", password_digest: "$2a$12$Ydn/NQw0z17QJJHtdIApHOPevIMICIFK.9nhLiW0NlCRiedFrFQdq", admin: true},
#   {name: "The Doctor", email: "dw@who.tardis", password_digest: "$2a$12$Cc6udkSD7CHvx1gBvCotVO9CIUrlDt4Oy84mDR7Ntf1dIRHIz5xLe", admin: true}
# ])

# Supplier.create!([
#   {name: "JeddhaCo", email: "jedd@h.org", phone_number: "123456789"},
#   {name: "Coruscant Corp.", email: "CoruCore@sith.gov", phone_number: "38462973"},
#   {name: "MandaloreUnited", email: "mando@dsaber.reb", phone_number: "77698732"}
# ])

Product.create!([
  {name: "Kanan's Saber", price: 900, description: "A lightsaber that once belonged to the Jedi Kanan Jarrus; green hilt, blue kyber crystal.", supplier_id: 1, quantity: 1},
  {name: "Cal's Saber", price: 300, description: "A lightsaber that once belonged to the escaped padawan Cal Kestis; silver hilt, purple cracked kyber crystal.", supplier_id: 23, quantity: 1},
  {name: "Kyber Crystal - Cracked Purple", price: 400, description: "A crystal used to power and focus the Jedi Lightsaber weapon, due to the crack in the crystal the emanating power will appear unstable.", supplier_id: 1, quantity: 2},
  {name: "Kyber Crystal - Blue", price: 200, description: "A crystal used to power and focus the Jedi Lightsaber weapon.", supplier_id: 1, quantity: 12},
  {name: "Serenity", price: 350000, description: "The firefly class ship, Serenity.", supplier_id: 23, quantity: 1},
  {name: "Saiyan Scouter", price: 3500, description: "Detects power levels.", supplier_id: 23, quantity: 38},
  {name: "Scouter", price: 3500, description: "Detects power levels.", supplier_id: 23, quantity: 38},
  {name: "Naboo Starfighter", price: 42000, description: "sleek, agile interceptor", supplier_id: 1, quantity: 1}
])

Image.create!([
  {url: "https://upload.wikimedia.org/wikipedia/en/1/11/Serenityship.jpg", product_id: 6},
  {url: "https://i.ytimg.com/vi/ZZV4tMVi0-M/maxresdefault.jpg", product_id: 11},
  {url: "https://i.pinimg.com/originals/46/48/ef/4648ef14f0488b8654c3486f7719355b.png", product_id: 11},
  {url: "https://i.ytimg.com/vi/ZZV4tMVi0-M/maxresdefault.jpg", product_id: 12},
  {url: "https://i.pinimg.com/originals/46/48/ef/4648ef14f0488b8654c3486f7719355b.png", product_id: 12},
  {url: "https://static.wikia.nocookie.net/starwars/images/c/cf/PadmeAmidalaChromiumN1-SWZ.png/revision/latest?cb=20200503164856", product_id: 13}
])

Category.create!([
  {name: "Lightsabers"},
  {name: "Kyber"},
  {name: "Ships"},
  {name: "Speeders"},
  {name: "Armor"}
])

CartedProduct.create!([
  {user_id: nil, product_id: nil, quantity: nil, status: nil, order_id: nil},
  {user_id: 6, product_id: 2, quantity: 1, status: "carted", order_id: nil}
])

CategoryProduct.create!([
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 1},
  {product_id: 3, category_id: 2},
  {product_id: 5, category_id: 2}
])

Order.create!([
  {user_id: 1, product_id: 6, quantity: 4, subtotal: "3000.0", tax: "100.0", total: "3100.0"}
])