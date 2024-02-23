require "./lib/animal_lover_factory"

RSpec.describe AnimalLoverFactory do
  it "exists" do
    factory1 = AnimalLoverFactory.new
    expect(factory1).to be_a AnimalLoverFactory
  end

  it "can create AnimalLovers from CSV" do
    factory1 = AnimalLoverFactory.new

    expect(factory1.animal_lovers).to eq([])

    factory1.create_from_csv("./data/animal_lovers.csv")

    first = factory1.animal_lovers.first

    expect(first).to be_a AnimalLover
    expect(first.id).to eq 1
    expect(first.first_name).to eq "Rubeus"
    expect(first.last_name).to eq "Hagrid"
    expect(first.age).to eq 60
  end
end
