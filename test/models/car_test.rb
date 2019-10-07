require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "for empty name" do
    car = Car.create({:name => "", :VIN => "3434343"})
    refute car.valid?
    refute car.save
  end
end
