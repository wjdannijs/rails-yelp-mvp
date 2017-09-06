puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "12385730921",
    category:     "french"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "535872523590",
    category:     "belgian"
  },
  {
    name:         "I like burgers",
    address:      "112 Rokin",
    phone_number: "02035872",
    category:     "belgian"
  },
  {
    name:         "WokWokWok",
    address:      "Around the corner 374",
    phone_number: "69o437622354",
    category:     "chinese"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "987647832523",
    category:     "japanese"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

