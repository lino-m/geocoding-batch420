class Flat < ApplicationRecord
  # needed for geocoding gem
  geocoded_by :address
  # will change validation in case of changes to the address
  after_validation :geocode, if: :will_save_change_to_address?
end
