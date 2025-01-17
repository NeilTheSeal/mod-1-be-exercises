require "./lib/shape"

RSpec.describe Shape do
  it "exists" do
    s = Shape.new("red", 2, 4)
    expect(s).to be_an_instance_of(Shape)
  end

  it "has color, length, and width attributes" do
    s = Shape.new("red", 2, 4)
    expect(s.color).to eq("red")
    expect(s.length).to eq(2)
    expect(s.width).to eq(4)
  end

  it "can calculate area" do
    s = Shape.new("red", 2, 4)
    expect(s.area).to eq(8)
  end

  it "can calculate perimeter" do
    s = Shape.new("red", 2, 4)
    expect(s.perimeter).to eq(12)
  end
end
