require "./require_helper"

# Documentation for class Building
class Building
  attr_reader :building_name, :building_number, :apartments

  def initialize(info)
    @building_name = info[:building_name]
    @building_number = info[:building_number]
    @apartments = []
  end

  def add_apartment(apartment)
    @apartments << apartment if @apartments.length < 4
  end

  def list_apartments
    @apartments
  end
end
