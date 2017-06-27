# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Section.generate_defaults
FoodItem.delete_all
FoodItem.create! id: 1, name: "Pancakes", price: 2.99, active: true, section_id: 1, description: "The banana is an edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa. In some countries, bananas used for cooking may be called plantains, in contrast to dessert bananas. Wikipedia"
FoodItem.create! id: 2, name: "Waffles", price: 2.29, active: true, section_id: 1, description: "Apple Inc. is an American multinational technology company headquartered in Cupertino, California that designs, develops, and sells consumer electronics, computer software, and online services."
FoodItem.create! id: 3, name: "Eggs", price: 1.99, active: true, section_id: 1, description: "The garden strawberry is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries."
FoodItem.create! id: 4, name: "All Star Breakfast", price: 4.99, active: true, section_id: 1, description: "A Waffle House is a Waffle House is a Waffle House.......... The menu, food choices and service, as well as the prices, seems to be the same all across these United States."
FoodItem.create! id: 5, name: "Classic BLT", price: 6.99, active: true, section_id: 2, description: "A BLT (Bacon, Lettuce, and Tomato) is a type of bacon sandwich. The standard BLT is made up of four ingredients: bacon, lettuce, tomato, and bread. The BLT evolved from the tea sandwiches served before 1900 at a similar time to the club sandwich,[citation needed] although it is unclear when the name BLT became the norm."
FoodItem.create! id: 6, name: "CheeseBurger", price: 7.29, active: true, section_id: 2, description: "A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty, but the burger can include many variations in structure, ingredients, and composition. The cheese is normally added to the cooking hamburger patty shortly before the patty is entirely cooked, which allows the cheese to melt. As with other hamburgers, a cheeseburger may include toppings, such as lettuce, tomato, onion, pickles, mustard, mayonnaise, ketchup, or bacon."
FoodItem.create! id: 7, name: "Caesar Salad", price: 6.99, active: true, section_id: 2, description: "A Caesar salad is a salad of romaine lettuce and croutons dressed with parmesan cheese, lemon juice, olive oil, egg, Worcestershire sauce, garlic, and black pepper. It is traditionally prepared tableside."
FoodItem.create! id: 8, name: "Chicken Sandwich", price: 4.99, active: true, section_id: 2, description: "Divine Summertime Chicken Sandwich. Pan-fried chicken breasts with a fresh cream cheese dill spread and tomatoes and lettuce on toasty French bread, YUMMY! Oh so good with a glass of wine or lemonade! You can also grill your chicken breasts for extra flavor."
FoodItem.create! id: 9, name: "Jack Daniels Whiskey Burger", price: 6.99, active: true, section_id: 3, description: "A BLT (Bacon, Lettuce, and Tomato) is a type of bacon sandwich. The standard BLT is made up of four ingredients: bacon, lettuce, tomato, and bread. The BLT evolved from the tea sandwiches served before 1900 at a similar time to the club sandwich,[citation needed] although it is unclear when the name BLT became the norm."
FoodItem.create! id: 10, name: "Steak & Lobster", price: 19.99, active: true, section_id: 3, description: "TO CHANGE IS TO IMPROVE. AT OUR NEWLY RELAUNCHED STEAK & LOBSTER, THIS SAYING COULDN'T BE MORE TRUE.
WE ASPIRE TO BE THE VERY BEST IN WHAT WE DO; DELIVERING THE FINEST STEAK AND FRESHEST LOBSTER TO YOUR PLATE. WE BELIEVE SIMPLICITY IS KEY AND LET THE FOOD SPEAK FOR ITSELF.
WITH LOBSTER CAUGHT FROM THE CANADIAN SEAS AND STEAK FROM COUNTY ANTRIM IN NORTHERN IRELAND, WE UNDERSTAND THE IMPORTANCE OF PROVENANCE AND QUALITY.
DOWN-TO-EARTH, RUSTIC AND HUMBLE, WE BRING YOU A RANGE OF COMPLEMENTARY BITES, SALADS AND DESSERTS, IN ADDITION TO OUR POPULAR SIGNATURE DISHES.
TAKE A SEAT IN ONE OF OUR LONDON, HEATHROW OR MANCHESTER RESTAURANTS."
FoodItem.create! id: 11, name: "Ribeye Steak 16 oz", price: 16.99, active: true, section_id: 3, description: "The rib eye or ribeye is a beef steak from the rib section. The rib section of beef spans from ribs six through twelve. Ribeye steaks are mostly composed of the longissimus dorsi muscle but also contain the complexus and spinalis muscles."
FoodItem.create! id: 12, name: "MeatLovers Pizza", price: 15.99, active: true, section_id: 3, description: "Rasher bacon, pepperoni, cherry wood smoked leg ham, ground beef, Italian sausage on a BBQ sauce base."
FoodItem.create! id: 13, name: "Coca Cola", price: 0.99, active: true, section_id: 4, description: "Coca-Cola (often referred to simply as Coke) is a carbonated soft drink[1] produced by The Coca-Cola Company. Originally intended as a patent medicine, it was invented in the late 19th century by John Pemberton and was bought out by businessman Asa Griggs Candler, whose marketing tactics led Coca-Cola to its dominance of the world soft-drink market throughout the 20th century. The drink's name refers to two of its original ingredients, which were kola nuts (a source of caffeine) and coca leaves. The current formula of Coca-Cola remains a trade secret, although a variety of reported recipes and experimental recreations have been published."
FoodItem.create! id: 14, name: "Bud Light", price: 2.89, active: true, section_id: 4, description: "Budweiser is an American-style pale lager produced by Anheuser-Busch, currently part of the multinational corporation Anheuser-Busch InBev."
FoodItem.create! id: 15, name: "Orange Juice", price: 1.99, active: true, section_id: 4, description: "Orange juice is the liquid extract of the fruit of the orange tree, produced by squeezing oranges. It comes in several different varieties, including blood orange, navel oranges, valencia orange, clementine, and tangerine."
FoodItem.create! id: 16, name: "Bottled Water", price: 0.99, active: true, section_id: 4, description: "Bottled water is drinking water packaged in plastic or glass water bottles. Bottled water may be carbonated or not. Sizes range from small single serving bottles to large carboys for water coolers."

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
