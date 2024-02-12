require "./require_helper"

# Documentation for class Apartment
class Apartment
  attr_reader :rooms

  def initialize
    @rented = false
    @rooms = []
  end

  def is_rented? # rubocop:disable Naming/PredicateName
    @rented
  end

  def rent
    @rented = true
  end

  def add_room(room)
    @rooms << room if @rooms.length < 4
  end

  def list_rooms_by_name_alphabetically
    rooms = []
    @rooms.each do |room|
      rooms << room.name
    end
    rooms.sort
  end
end
