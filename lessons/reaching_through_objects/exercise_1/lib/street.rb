require "./require_helper"

# Documentation for class Street
class Street
  attr_reader :name

  def initialize(name)
    @name = name
    @building_list = []
  end

  def add_building(building)
    @building_list << building
  end

  def buildings
    building_name_list = []
    @building_list.each do |building|
      building_name_list << building.building_name
    end
    building_name_list.sort
  end

  def number_of_available_apartments
    apartments_available = 0
    @building_list.each do |building|
      building.apartments.each do |apartment|
        apartments_available += 1 if apartment.is_rented?
      end
    end
    apartments_available
  end
end
