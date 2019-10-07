require 'test_helper'

class PartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "for empty name" do
    part = Part.create({:name => ""})
    refute part.valid?
    refute part.save
  end

  test "for good name" do
    part = Part.create({:name => "Belt"})
    assert part.valid?
    assert part.save
  end
end
