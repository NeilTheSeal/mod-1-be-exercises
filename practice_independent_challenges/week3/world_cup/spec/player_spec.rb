require "rspec"
require "./lib/player"

RSpec.describe Player do
  it "exists" do
    expect(Player.new({
      name: "Luka Modric",
      position: "midfielder"
    })).to be_an_instance_of(Player)
  end

  it "has a name" do
    expect(Player.new({
      name: "Luka Modric",
      position: "midfielder"
    }).name).to eq("Luka Modric")
  end

  it "has a position" do
    expect(Player.new({
      name: "Luka Modric",
      position: "midfielder"
    }).position).to eq("midfielder")
  end
end
