# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
product = Product.new({name: "Sting", price: 10000, image_url: "https://cdn.reliks.com/products/341/750x280/1.jpg", description: "Sting was an Elven shortsword made in Gondolin during the First Age. After wielding it during the Quest for Erebor, Bilbo Baggins had it engraved with the Sindarin text, Maegnas aen estar nin dagnir in yngyl im. Translated into English, it reads, \"Sting is my name; I am the spider's bane.\""})
product.save

product = Product.new({name: "Frostmourne", price: 50000, image_url: "https://i.ebayimg.com/images/g/T5UAAOSw-0xYPuO5/s-l1600.jpg", description: "Frostmourne was the runeblade that Ner'zhul, the Lich King, thrust from the Frozen Throne, intending that Arthas Menethil — his unwitting potential host — would discover it on the continent of Northrend. It was wielded by Arthas, the new Lich King, until it was destroyed by Tirion Fordring following his defeat in Icecrown Citadel."})
product.save
product =Product.new({name: "Master Sword", price: 20000, image_url: "http://dl36mmdz94630.cloudfront.net/uploads/assets/images/000/029/163/large/MS1.jpg?1430242360", description: "Originally crafted by the goddess Hylia as the Goddess Sword, it was later forged into the Master Sword by the Goddess's chosen hero and its spirit, Fi, who bathed it in the three Sacred Flames located across the land that would become the Kingdom of Hyrule. Din's Flame in particular imbued the sword with the Power to Repel Evil, a power augmented after the Sword received the blessing of Zelda, which transformed the blade into the True Master Sword."})
product.save
product = Product.new({name: "Buster Sword", price: 15000, image_url: "https://vignette.wikia.nocookie.net/finalfantasy/images/9/9a/Buster_sword_2_FF7.png/revision/latest?cb=20100611221609", description: "The Buster Sword is classified as an enormous broadsword. From tip to handle, it is approximately five to six feet long, with a single-edged large blade approximately one foot wide. In Cloud's Final Fantasy VII artwork, the blade is a lighter color on the bladed edge, while the rest of the blade is dark gray, and the handguard appears to be bolted or riveted into place. There are two holes near the handguard, variably said to be Materia slots, or where Cloud clips the sword onto his back. This design is used in most spin-off appearances. In the Kingdom Hearts series, Cloud wields a Buster Sword of this design wrapped in bandages."})
product.save