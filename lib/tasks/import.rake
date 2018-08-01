require 'csv'

filename = File.join Rails.root, "public/locations_alph.csv"
task :import_locations => :environment do 
    CSV.read(filename, headers: true).each do |row|
        region = row[0]
        city = row[1]
        name = row[2]
        address = row[3]
        location = Location.create(region: region, city: city, name: name, address: address)
        # puts "#{name} - #{location.errors.full_messages.join(", ")}" if location.errors.any?
    end
end
 