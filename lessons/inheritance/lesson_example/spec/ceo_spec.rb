require "./lib/employee"
require "./lib/ceo"

RSpec.describe Ceo do
  describe "setup" do
    it "exists" do
      ceo = Ceo.new("Bob", 1, 15, 20)
      expect(ceo).to be_an_instance_of(Ceo)
      expect(ceo).to be_a(Employee)
    end
    it "has base_salary and bonus attributes" do
      ceo = Ceo.new("Bob", 1, 15, 20)
      expect(ceo.base_salary).to eq(15)
      expect(ceo.bonus).to eq(20)
    end
  end

  describe "Has a name, ID, and total_compensation" do
    # Write tests to prove that a Ceo instance can have a Name and
    # ID number, like any other Employee. Also, the
    # CEO should be able to receive a total compensation.
    # Write at least one test that proves they can access this method.
    it "has a name" do
      ceo = Ceo.new("Bob", 1, 100_000, 20_000)
      expect(ceo.name).to eq("Bob")
    end

    it "has an id" do
      ceo = Ceo.new("Bob", 1, 100_000, 20_000)
      expect(ceo.id).to eq(1)
    end

    it "has total compensation" do
      ceo = Ceo.new("Bob", 1, 100_000, 20_000)
      expect(ceo.total_compensation).to eq(120_000)
    end
  end
end
