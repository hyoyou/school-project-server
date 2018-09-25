class UserLocation < ApplicationRecord
  belongs_to :user
  belongs_to :location

  #validates :location_id, uniqueness: true

  def location_attributes=(location_attributes)
    loc_id = location_attributes[:id]
    subject_location = Location.find_by(id: loc_id)
    self.location = subject_location
  end

end
