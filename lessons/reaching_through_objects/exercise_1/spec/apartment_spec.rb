require "./require_helper"
require "rspec"

RSpec.describe Apartment do # rubocop:disable Metrics/BlockLength
  before(:each) do
    @apartment = Apartment.new
  end

  it "exists" do
    expect(@apartment).to be_an_instance_of(Apartment)
  end

  it "is not rented by default" do
    expect(@apartment.is_rented?).to eq(false)
  end

  it "can be rented" do
    @apartment.rent
    expect(@apartment.is_rented?).to eq(true)
  end

  it "has no rooms by default" do
    expect(@apartment.rooms).to eq([])
  end

  describe "#Adding rooms - " do
    it "can have rooms added" do
      @apartment.add_room(Room.new("bathroom"))
      @apartment.add_room(Room.new("bedroom"))
      expect(@apartment.rooms.length).to eq(2)
      expect(@apartment.rooms[0]).to be_an_instance_of(Room)
    end
    it "can have no more than 4 rooms" do
      @apartment.add_room(Room.new("bathroom"))
      @apartment.add_room(Room.new("bedroom"))
      @apartment.add_room(Room.new("kitchen"))
      @apartment.add_room(Room.new("living room"))
      @apartment.add_room(Room.new("second bedroom"))
      expect(@apartment.rooms.length).to eq(4)
    end
    it "can list rooms alphabetically" do
      @apartment.add_room(Room.new("kitchen"))
      @apartment.add_room(Room.new("living room"))
      @apartment.add_room(Room.new("bathroom"))
      @apartment.add_room(Room.new("bedroom"))
      expect(@apartment.list_rooms_by_name_alphabetically).to eq(
        ["bathroom", "bedroom", "kitchen", "living room"]
      )
    end
  end
end
