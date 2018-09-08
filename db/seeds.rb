# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
array = []


location = Location.all[0]
user = User.create(
  email: Faker::Internet.email,
  password: Faker::Internet.password(8)
)

array.each do |lb|
  lb.user_id = user.id
  lb.location_id = location.id
  lb.save
  next
end
