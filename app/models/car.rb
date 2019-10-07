class Car < ApplicationRecord
  belongs_to :make                          #creates many to one with makes
  has_and_belongs_to_many :parts     #creates many to many with parts

  validates :VIN, numericality: true, uniqueness: true, presence: true #ensures VIN is present and a number
  validates :name, presence: true #ensures name is present

end
