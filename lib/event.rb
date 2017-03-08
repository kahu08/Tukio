class Event <ActiveRecord::Base
  belongs_to(:categorie)
  has_many(:attendees)
end
