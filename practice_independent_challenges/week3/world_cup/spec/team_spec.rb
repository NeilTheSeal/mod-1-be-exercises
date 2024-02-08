require "rspec"
require "./lib/player"
require "./lib/team"

RSpec.describe Player do
  it "exists" do
    expect(Team.new({ country: "France" })).to be_an_instance_of(Team)
  end

  it "has a country" do
    expect(Team.new({ country: "France" }).country).to eq("France")
  end

  it "is not eliminated by default" do
    expect(Team.new({ country: "France" }).eliminated?).to eq(false)
  end

  it "can be eliminated" do
    team = Team.new({ country: "France" })
    team.eliminated = true
    expect(team.eliminated?).to eq(true)
  end
end
