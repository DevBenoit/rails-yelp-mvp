# Restaurant.destroy_all

# regalade = { name: "La Régalade", address: "7 rue de Londres, Paris", category: "french" }
# splash = { name: "Splash", address: "Port d'Asnieres, Ansières", category: "french" }

# [regalade, splash].each do |attributes|
#   restaurant = Restaurant.create(attributes)
#   puts "Created #{restaurant.name}"
# end

# yummy = Review.new(content: "yummy yummy", rating: 4)
# yummy.restaurant = splash
# yummy.save

require 'faker'
Restaurant.destroy_all
5.times do
  restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.full_address, category: Restaurant::CATEGORIES.sample)
  yummy = Review.new(content: Faker::Restaurant.review, rating: Review::RATINGS.sample, restaurant: restaurant)
  restaurant.save!
  yummy.save!
end
