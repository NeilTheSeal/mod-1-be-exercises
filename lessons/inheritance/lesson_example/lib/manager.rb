class Manager < Employee
  attr_reader :per_team_rate,
              :departments

  def initialize(name, id, base_salary, bonus)
    super
    @per_team_rate = 5
    @departments = []
  end

  def add_department(dept)
    @departments << dept
  end

  def benefits
    %i[sick_leave health_insurance]
  end
end
