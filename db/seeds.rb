User.create!([
  {name: "Joe", email: "joe@gmail.com", password_digest: "$2a$10$mC/g.ia/bbm0vrRkUFgBNO1J8Jgfe/JqeS7IM24hvTDIfKxk8ptAS", admin: true},
  {name: "Luna", email: "luna@gmail.com", password_digest: "$2a$10$htHcZ35dTvBMT1Rpi4kBK.G6gTL9a7To79HRclT/o.MnW5nwLVQ.m", admin: false}
])
Category.create!([
  {name: "Swords"},
  {name: "Bows"}
])
Supplier.create!([
  {name: "Steve's Stabby Stuff", email: "Steve@sss.com", phone_number: "919-555-5555"},
  {name: "We Sell Bows", email: "contact@wsb.com", phone_number: "919-444-4444"}
])
Product.create!([
  {name: "Sting", price: "10000.0", description: "Sting was an Elven shortsword made in Gondolin during the First Age. After wielding it during the Quest for Erebor, Bilbo Baggins had it engraved with the Sindarin text, Maegnas aen estar nin dagnir in yngyl im. Translated into English, it reads, \"Sting is my name; I am the spider's bane.\"", stock: true, supplier_id: 1},
  {name: "Frostmourne", price: "50000.0", description: "Frostmourne was the runeblade that Ner'zhul, the Lich King, thrust from the Frozen Throne, intending that Arthas Menethil — his unwitting potential host — would discover it on the continent of Northrend. It was wielded by Arthas, the new Lich King, until it was destroyed by Tirion Fordring following his defeat in Icecrown Citadel.", stock: true, supplier_id: 1},
  {name: "Buster Sword", price: "15000.0", description: "The Buster Sword is classified as an enormous broadsword. From tip to handle, it is approximately five to six feet long, with a single-edged large blade approximately one foot wide. In Cloud's Final Fantasy VII artwork, the blade is a lighter color on the bladed edge, while the rest of the blade is dark gray, and the handguard appears to be bolted or riveted into place. There are two holes near the handguard, variably said to be Materia slots, or where Cloud clips the sword onto his back.", stock: true, supplier_id: 1},
  {name: "Sunstrider's Longbow", price: "25000.0", description: "Dath'Remar Sunstrider, the ancestor of Kael'thas Sunstrider, owned this bow in ages past. It was passed down through the generations until finally given to Sylvanas Windrunner, Ranger-General of Quel'Thalas. The arrows fired from this composite longbow are automatically imbued as though they were flaming ammunition. They can strike incorporeal spirits and are particularly effective against demons. Once per day, it can loose a slaying arrow that has a chance of instantly killing its intended target.", stock: true, supplier_id: 2},
  {name: "Master Sword", price: "30000.0", description: "Originally crafted by the goddess Hylia as the Goddess Sword, it was later forged into the Master Sword by the Goddess's chosen hero and its spirit, Fi, who bathed it in the three Sacred Flames located across the land that would become the Kingdom of Hyrule. Din's Flame in particular imbued the sword with the Power to Repel Evil, a power augmented after the Sword received the blessing of Zelda, which transformed the blade into the True Master Sword.", stock: true, supplier_id: 1},
])
Image.create!([
  {product_id: 1, image_url: "https://cdn.reliks.com/products/341/750x280/1.jpg"},
  {product_id: 2, image_url: "https://i.ebayimg.com/images/g/T5UAAOSw-0xYPuO5/s-l1600.jpg"},
  {product_id: 3, image_url: "https://vignette.wikia.nocookie.net/finalfantasy/images/9/9a/Buster_sword_2_FF7.png/revision/latest?cb=20100611221609"},
  {product_id: 4, image_url: "http://i1021.photobucket.com/albums/af332/Alkariender/MMOs/SunstridersLongbow.png"},
  {product_id: 5, image_url: "http://dl36mmdz94630.cloudfront.net/uploads/assets/images/000/029/163/large/MS1.jpg?1430242360"}
])
Order.create!([
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: "10000.0", tax: "700.0", total: "10700.0"},
  {user_id: 1, subtotal: "35000.0", tax: "2450.0", total: "37450.0"}
])

ProductCategory.create!([
  {product_id: 1, category_id: 1}
])


CartedProduct.create!([
  {user_id: 2, product_id: 2, quantity: 1, status: "carted", order_id: nil},
  {user_id: 1, product_id: 3, quantity: 1, status: "purchased", order_id: nil},
  {user_id: 1, product_id: 1, quantity: 1, status: "purchased", order_id: 3},
  {user_id: 1, product_id: 4, quantity: 1, status: "purchased", order_id: 3},
  {user_id: 1, product_id: 2, quantity: 1, status: "carted", order_id: nil},
  {user_id: 2, product_id: 2, quantity: 1, status: "removed", order_id: nil}
])
