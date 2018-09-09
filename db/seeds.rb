# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# array = []
#
# location = Location.all[0]
# user = User.create(
#   email: Faker::Internet.email,
#   password: Faker::Internet.password(8)
# )
#
# array.each do |lb|
#   lb.user_id = user.id
#   lb.location_id = location.id
#   lb.save
#   next
# end

10.times do
    user = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8))

    user_location = UserLocation.create(rank: Faker::Number.between(0, 11), no_of_checkins: Faker::Number.number(2))
    user_location.user = user
    user_location.save


    Location.all.each do |location|
      location.user = user
      location.save
      user_location.location = location
      user_location.save
    end
end
