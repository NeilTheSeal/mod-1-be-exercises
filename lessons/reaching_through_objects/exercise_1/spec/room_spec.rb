require "./require_helper"
require "rspec"

RSpec.describe Room do
  it "exists" do
    expect(Room.new("bedroom")).to be_an_instance_of(Room)
  end

  it "has a name" do
    bathroom = Room.new("bathroom")
    expect(bathroom.name).to eq("bathroom")
  end
end
