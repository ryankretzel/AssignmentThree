class Make < ApplicationRecord
  has_many :cars   #creates one to many with cars

  validates :name, presence: true #ensures name is present
end

