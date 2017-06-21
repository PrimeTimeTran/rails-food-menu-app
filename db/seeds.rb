# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Section.generate_defaults
FoodItem.delete_all
FoodItem.create! id: 1, name: "Banana", price: 0.49, active: true, section_id: 1, description: "The banana is an edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa. In some countries, bananas used for cooking may be called plantains, in contrast to dessert bananas. Wikipedia"
FoodItem.create! id: 2, name: "Apple", price: 0.29, active: true, section_id: 1, description: "Apple Inc. is an American multinational technology company headquartered in Cupertino, California that designs, develops, and sells consumer electronics, computer software, and online services."
FoodItem.create! id: 3, name: "Carton of Strawberries", price: 1.99, active: true, section_id: 1, description: "The garden strawberry is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries."

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
