# creating user
user = User.create({email: "test@example.com", password: "123456789", password_confirmation: "123456789"})
Cart.create({user_id: user.id})

# creating categories
cat_1 = Category.create({name: "Nikon", cat_type: "focussable", model_year: 2011})
cat_2 = Category.create({name: "Cannon", cat_type: "full frame", model_year: 1979})

# creating products
Product.create([{name: "Nikon 12", category_id: cat_1.id, description: "Test desc", price: 20.2, make_year: 2012},{name: "Nikon 34", category_id: cat_1.id, description: "Test desc", price: 40.2, make_year: 2010},{name: "Canon 12", category_id: cat_2.id, description: "Test desc", price: 25, make_year: 1996},{name: "Canon 34", category_id: cat_2.id, description: "Test desc", price: 1.12, make_year: 2017}])