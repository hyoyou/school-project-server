# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
    user = User.create(username: Faker::HarryPotter.character, email: Faker::Internet.email, password: Faker::Internet.password(8), no_of_checkins: Faker::Number.between(1,400))

    user_location = UserLocation.create
    user_location.user = user
    user_location.save


    Location.all.each do |location|

      user_location.location = location
      user_location.save
    end
end
