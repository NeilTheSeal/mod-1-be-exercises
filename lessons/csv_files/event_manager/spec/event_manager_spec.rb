require "./lib/event_manager"
require "rspec"

RSpec.describe EventManager do
  before(:each) do
    @event_manager = EventManager.new
  end

  it "exists" do
    expect(@event_manager).to be_an_instance_of(EventManager)
  end
end
