require 'test_helper'

class MakeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "for good name" do
    make = Make.create({:name => "Honda"})
    assert make.valid?
    assert make.save
  end

  test "for empty name" do
    make = Make.create({:name => ""})
    refute make.valid?
    refute make.save
  end
end
