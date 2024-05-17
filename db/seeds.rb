# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:
# 
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create([
  {
    name: "Quiet Comfort 35",
    brand: "Bose",
    price: "$299.99",
    description: "Wireless Bluetooth Headphones, Noise-Cancelling, with Alexa voice control – Black"
  },
  {
    name: "Noise Cancelling Headphones WH1000XM3",
    brand: "Sony",
    price: "$348.00",
    description: "Wireless Bluetooth Over the Ear Headset with Mic for phone-call and Alexa voice control – Industry Leading Active Noise Cancellation – Black"
  },
  {
    name: "Freedom Aluminum Patio Panel Sliding Glass Pet Door",
    brand: "PetSafe",
    price: "$124.95",
    description: "Sliding Glass Pet Door for Dogs and Cats – Adjustable Frame."
  },
  {
    name: "Quadcopter Mini Drone",
    brand: "Crazepony",
    price: "$28.79",
    description: "Crazepony Quad Rotor Open Source PCB Development Platform for Student Maker Geeker"
  },
  {
    name: "CJ890 Series Desktop Curved Monitor",
    brand: "Samsung",
    price: "$1099.99",
    description: "49 inch 3840x1080 Super Ultra-Wide Desktop Monitor for Business, 144 Hz, USB-C, HDMI, DisplayPort, 3-Year Warranty (C493890DKN)"
  }
])
