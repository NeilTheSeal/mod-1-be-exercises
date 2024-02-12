require "./require_helper"
require "rspec"

RSpec.describe Street do # rubocop:disable Metrics/BlockLength
  before(:each) do
    @street = Street.new("Adlington Road")
    @building1 = Building.new({
      building_number: "623",
      building_name: "Savills Apartment Building"
    })
    @building2 = Building.new({
      building_number: "666",
      building_name: "Zebra Apartments"
    })
  end

  it "exists" do
    expect(@street).to be_an_instance_of(Street)
  end

  it "has a name" do
    expect(@street.name).to eq("Adlington Road")
  end

  describe "#Add buildings" do
    it "can list the buildings added alphabetically" do
      @street.add_building(@building2)
      @street.add_building(@building1)
      expect(@street.buildings).to eq(
        [
          @building1.building_name,
          @building2.building_name
        ]
      )
    end
  end

  it "can state the number of apartments rented" do
    apt1 = Apartment.new
    apt2 = Apartment.new
    apt3 = Apartment.new
    apt1.rent
    apt2.rent
    apt4 = Apartment.new
    apt5 = Apartment.new
    apt4.rent
    @building1.add_apartment(apt1)
    @building1.add_apartment(apt2)
    @building1.add_apartment(apt3)
    @building2.add_apartment(apt4)
    @building2.add_apartment(apt5)
    @street.add_building(@building1)
    @street.add_building(@building2)
    expect(@street.number_of_available_apartments).to eq(3)
  end
end
