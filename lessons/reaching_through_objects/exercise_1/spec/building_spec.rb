require "./require_helper"
require "rspec"

RSpec.describe Building do # rubocop:disable Metrics/BlockLength
  before(:each) do
    @building = Building.new({
      building_number: "623",
      building_name: "Savills Apartment Building"
    })
  end

  it "exists" do
    expect(@building).to be_an_instance_of(Building)
  end

  it "has a building number" do
    expect(@building.building_number).to eq("623")
  end

  it "has a building name" do
    expect(@building.building_name).to eq("Savills Apartment Building")
  end

  describe "#Has apartments - " do
    it "can add apartments" do
      apt1 = Apartment.new
      apt2 = Apartment.new
      apt3 = Apartment.new
      @building.add_apartment(apt1)
      @building.add_apartment(apt2)
      @building.add_apartment(apt3)
      expect(@building.list_apartments.length).to eq(3)
      @building.list_apartments.each do |apartment|
        expect(apartment).to be_an_instance_of(Apartment)
      end
    end
    it "can have no more than 4 apartments" do
      apt1 = Apartment.new
      apt2 = Apartment.new
      apt3 = Apartment.new
      apt4 = Apartment.new
      apt5 = Apartment.new
      @building.add_apartment(apt1)
      @building.add_apartment(apt2)
      @building.add_apartment(apt3)
      @building.add_apartment(apt4)
      @building.add_apartment(apt5)
      expect(@building.list_apartments).to eq([apt1, apt2, apt3, apt4])
    end
  end
end
