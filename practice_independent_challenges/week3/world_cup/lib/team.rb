# Documentation for class Team
class Team
  attr_reader :country
  attr_writer :eliminated

  def initialize(args)
    @country = args[:country]
    @eliminated = false
  end

  def eliminated?
    @eliminated
  end
end
