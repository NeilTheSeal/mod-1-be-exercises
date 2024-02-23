require "pry"
require "rspec"
require "./lib/attendee"

describe Attendee do
  before :each do
    @person1 = Attendee.new(1, "Allison", "Nguyen", "20010")
    @person2 = Attendee.new(4, "David", "Thomas", "7306")
    @person3 = Attendee.new(5, "Chris", "Sackett", nil)
    @person4 = Attendee.new(7, "Mary Kate", "Curry", "212305")
  end

  it "exists" do
    expect(@person1).to be_an Attendee
    expect(@person2).to be_an Attendee
    expect(@person3).to be_an Attendee
    expect(@person4).to be_an Attendee
  end

  it "has an ID number" do
    expect(@person1.id).to eq 1
    expect(@person2.id).to eq 4
    expect(@person3.id).to eq 5
    expect(@person4.id).to eq 7
  end

  it "has a first and last name" do
    expect(@person1.name).to eq "Allison Nguyen"
    expect(@person2.name).to eq "David Thomas"
    expect(@person3.name).to eq "Chris Sackett"
    expect(@person4.name).to eq "Mary Kate Curry"
  end

  it "has a valid zip code" do
    expect(@person1.zipcode).to eq "20010"
    expect(@person2.zipcode).to eq "07306"
    expect(@person3.zipcode).to eq "00000"
    expect(@person4.zipcode).to eq "21230"
  end

  it "displays" do
    expect(@person1.display).to eq("1: Allison Nguyen, 20010")
  end
end
