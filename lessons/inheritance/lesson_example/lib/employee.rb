class Employee
  attr_reader :name, :id, :base_salary, :bonus

  def initialize(name, id, base_salary, bonus)
    @name = name
    @id = id
    @base_salary = base_salary
    @bonus       = bonus
  end

  def total_compensation
    @base_salary + @bonus
  end

  def benefits
    [:sick_leave]
  end
end
