require "csv"
require "./lib/animal_lover"
require "pry"

class AnimalLoverFactory
  attr_reader :animal_lovers

  def initialize
    @animal_lovers = []
  end

  def create_from_csv(file_path)
    CSV.foreach(
      file_path,
      headers: true,
      header_converters: :symbol
    ) do |row|
      @animal_lovers << AnimalLover.new(
        row[:id],
        row[:first_name],
        row[:last_name],
        row[:age]
      )
    end
  end
end
