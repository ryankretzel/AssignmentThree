class Part < ApplicationRecord
  has_and_belongs_to_many :cars     #creates many to many with cars

  validates :name, presence: true #ensures name is present
end
