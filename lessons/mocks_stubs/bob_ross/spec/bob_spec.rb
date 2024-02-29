require "rspec"
require "./lib/bob"
require "./lib/paint"

RSpec.describe Bob do
  describe "Instantiation" do
    it "exists" do
      bob = Bob.new

      expect(bob).to be_an_instance_of(Bob)
    end

    it "starts with no paints" do
      bob = Bob.new

      expect(bob.paints).to eq([])
    end
  end

  describe "Methods" do
    it "can add paint" do
      bob = Bob.new
      paint1 = Paint.new("Alizarin Crimson")
      paint2 = Paint.new("Van Dyke Brown")

      bob.add_paint(paint1)
      bob.add_paint(paint2)

      expect(bob.paints).to eq([paint1, paint2])
    end

    it "can return paint colors" do
      bob = Bob.new
      paint1 = Paint.new("Alizarin Crimson")
      paint2 = Paint.new("Van Dyke Brown")

      bob.add_paint(paint1)
      bob.add_paint(paint2)

      expect(bob.paint_colors).to eq(["Alizarin Crimson", "Van Dyke Brown"])
    end

    it "can calculate total paint amount" do
      bob = Bob.new
      paint1 = Paint.new("Alizarin Crimson", 42)
      paint2 = Paint.new("Van Dyke Brown", 25)

      bob.add_paint(paint1)
      bob.add_paint(paint2)

      expect(bob.total_paint_amount).to eq(67)
    end
  end
end
